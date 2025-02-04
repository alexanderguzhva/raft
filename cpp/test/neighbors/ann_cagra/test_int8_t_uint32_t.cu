/*
 * Copyright (c) 2023, NVIDIA CORPORATION.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <gtest/gtest.h>

#include "../ann_cagra.cuh"

namespace raft::neighbors::experimental::cagra {

typedef AnnCagraTest<float, std::int8_t, std::uint32_t> AnnCagraTestI8;
TEST_P(AnnCagraTestI8, AnnCagra) { this->testCagra(); }
typedef AnnCagraSortTest<float, std::int8_t, std::uint32_t> AnnCagraSortTestI8;
TEST_P(AnnCagraSortTestI8, AnnCagraSort) { this->testCagraSort(); }

INSTANTIATE_TEST_CASE_P(AnnCagraTest, AnnCagraTestI8, ::testing::ValuesIn(inputs));
INSTANTIATE_TEST_CASE_P(AnnCagraSortTest, AnnCagraSortTestI8, ::testing::ValuesIn(inputs));

}  // namespace raft::neighbors::experimental::cagra
