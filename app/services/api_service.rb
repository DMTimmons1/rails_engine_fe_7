class ApiService
  def self.call(url)
    conn = Faraday.new(url: 'http://localhost:3000')
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end