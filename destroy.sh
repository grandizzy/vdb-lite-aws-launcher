#!/usr/bin/env bash
# destroy.sh
# Copyright (C) 2020 Maker Ecosystem Growth Holdings, INC.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

set -e
virtualenv .env
source .env/bin/activate
cdk destroy VdbPostgraphileEcsStack
cdk destroy VdbExtractDiffsEcsStack
cdk destroy VdbHeaderSyncEcsStack
cdk destroy VdbExecuteEcsStack
cdk destroy VdbRdsStack
cdk destroy VdbVpcStack
