class ArticlesController < ApplicationController
  def index
    data={
      title: 'foo',
      contents: {
        'bar': 'baz'
      }
    }

    DebugHelper.debug(data)
    DebugHelper.warn(data)
    DebugHelper.error(data)
  end
end
