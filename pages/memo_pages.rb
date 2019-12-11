class MemoPages
  def self.google
    @google ||= Google.new
  end
end
