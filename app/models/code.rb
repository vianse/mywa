class Code < ActiveRecord::Base
	scope :verifica ,-> (consultor) {where("code = ?", consultor)}
end
