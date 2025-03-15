@extends('layout')
@section('title', 'Quản lý Bệnh nhân')
@section('header', 'Danh sách Bệnh nhân')

@section('content')
    <div class="card">
        <div class="card-body">
            <div id="patients_table_wrapper" class="dataTables_wrapper dt-bootstrap4">

                <div class="row">
                    <div class="col-sm-12">
                        <table id="patients_table" class="table table-bordered table-striped dataTable dtr-inline"
                            role="grid" aria-describedby="patients_table_info">
                            <thead>
                                <tr role="row">
                                    <th class="sorting_asc" tabindex="0" aria-controls="patients_table" rowspan="1"
                                        colspan="1" aria-sort="ascending"
                                        aria-label="Kích hoạt để sắp xếp cột theo thứ tự giảm dần">
                                        Họ</th>
                                    <th class="sorting" tabindex="0" aria-controls="patients_table" rowspan="1"
                                        colspan="1" aria-label="Kích hoạt để sắp xếp cột theo thứ tự tăng dần">
                                        Tên</th>
                                    <th class="sorting" tabindex="0" aria-controls="patients_table" rowspan="1"
                                        colspan="1" aria-label="Kích hoạt để sắp xếp cột theo thứ tự tăng dần">
                                        Ngày sinh</th>
                                    <th class="sorting" tabindex="0" aria-controls="patients_table" rowspan="1"
                                        colspan="1" aria-label="Kích hoạt để sắp xếp cột theo thứ tự tăng dần">
                                        Số điện thoại</th>
                                    <th class="sorting" tabindex="0" aria-controls="patients_table" rowspan="1"
                                        colspan="1" aria-label="Kích hoạt để sắp xếp cột theo thứ tự tăng dần">
                                        Email</th>
                                    <th rowspan="1" colspan="1">
                                        Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $counter = 1;
                                @endphp

                                @foreach ($patients as $patient)
                                    <tr role="row" class="{{ $counter % 2 == 0 ? 'even' : 'odd' }}">
                                        <td class="dtr-control sorting_1" tabindex="0">
                                            {{ $patient['lastname'] }}</td>
                                        <td>{{ $patient['name'] }}</td>
                                        <td>{{ $patient['dob'] }}</td>
                                        <td>{{ $patient['phone'] }}</td>
                                        <td>{{ $patient['email'] }}</td>
                                        <td
                                            style="padding-right: -3.25rem;border-right-width: 0px;height: 37px;width: 95.833px;">
                                            <a href="{{ route('patients.show', [$patient]) }}"
                                                class="btn btn-profile btn-del"
                                                style="height: 41px;min-width: 46px;margin: 0px;padding: 0px;"><i
                                                    class="fas fa-external-link-alt"></i></a>

                                            <a href="{{ route('patients.edit', [$patient]) }}"
                                                class="btn btn-app btn-modify"
                                                style="height: 41px;min-width: 46px;margin: 0px;padding: 0px;">
                                                <i class="fas fa-pen"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    @php
                                        $counter++;
                                    @endphp
                                @endforeach

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="add-btn-container">
                <button type="button" class="btn-default add-btn" data-toggle="modal" data-target="#modal-add-patient">
                    <i class="fas fa-user-plus" style="font-size: 29px;margin-bottom: 8px;margin-left: 1px;"></i>
                </button>
            </div>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
    @include('modals._add_patient')

@endsection
