---@diagnostic disable: undefined-field
local parse = require('present')._parse_slides

local eq = assert.are.same

describe('present.parse_slides', function()
  it('should parse an empty file', function()
    eq({
      slides = {
        {
          title = '',
          body = {}
        }
      }
    }, parse {})
  end)

  it('should parse a file with one slide', function()
    eq({
      slides = {
        {
          title = '# Title of first slide',
          body = { 'body of first slide' }
        }
      }
    }, parse { '# Title of first slide', 'body of first slide' })
  end)
end)
