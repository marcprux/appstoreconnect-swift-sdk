// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppPricePoints.WithID {
	public var territory: Territory {
		Territory(path: path + "/territory")
	}

	public struct Territory {
		/// Path: `/v1/appPricePoints/{id}/territory`
		public let path: String

		@available(*, deprecated, message: "Deprecated")
		public func get(fieldsTerritories: [FieldsTerritories]? = nil) -> Request<AppStoreConnect_Swift_SDK.TerritoryResponse> {
			.get(path, query: makeGetQuery(fieldsTerritories))
		}

		private func makeGetQuery(_ fieldsTerritories: [FieldsTerritories]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsTerritories, forKey: "fields[territories]", explode: false)
			return encoder.items
		}

		public enum FieldsTerritories: String, Codable, CaseIterable {
			case currency
		}
	}
}