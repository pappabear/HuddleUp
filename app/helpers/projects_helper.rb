module ProjectsHelper

  def get_project_status_text(p)
    if p.status_code == 1
      return 'On track'
    end

    if p.status_code == 2
      return 'Troubled'
    end

    return 'Late'
  end

  def get_project_status_color(p)
    if p.status_code == 1
      return 'label-success'
    end

    if p.status_code == 2
      return 'label-warning'
    end

    return 'label-important'
  end


  def get_project_status_badge_color(p)
    if p.status_code == 1
      return 'btn-success'
    end

    if p.status_code == 2
      return 'btn-yellow'
    end

    return 'btn-pink'
  end



  def get_project_progress_color(p)
    if p.status_code == 1
      return 'rgb(130, 175, 111)'
    end

    if p.status_code == 2
      return 'rgb(248, 148, 6)'
    end

    return 'rgb(209, 91, 71)'
  end



  def get_milestone_status_color(m)
    # late
    if m.event_date.to_date < Time.now.to_date and m.percent_complete < 100
      return 'alert-danger'
    end

    #complete
    if m.percent_complete == 100
      return 'alert-success'
    end

    #started
    if m.percent_complete > 0 and m.percent_complete < 100
      return 'alert-warning'
    end

    #not started
    #started
    if m.percent_complete == 0
      return 'alert-info'
    end
  end


  def get_issue_status_color(i)
    if i.is_resolved?
      return 'alert-success'
    else
      return 'alert-danger'
    end
  end


end
