module CallLogsHelper

  def result_of_call_selections
    ['Successful',
     'Left voicemail',
     'Unable to Reach or Leave Msg',
     'Wrong Number',
     'Phone Disconnected',
     'Busy signal',
     'Requested a call back'].sort
  end

  def pcp_call_selections
    ['N/A',
     'No',
     'Scheduled appointment',
     'Unable to schedule at this time',
     'Office is closed',
     'Wrong number for office']
  end
end
