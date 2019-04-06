
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/05/2019 20:39:08
-- Generated from EDMX file: C:\Users\Maximo\source\repos\final2\final2\Models\modelo1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [final2];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_EmpleadosDepartamentos_Empleados]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadosDepartamentos] DROP CONSTRAINT [FK_EmpleadosDepartamentos_Empleados];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadosDepartamentos_Departamentos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadosDepartamentos] DROP CONSTRAINT [FK_EmpleadosDepartamentos_Departamentos];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadosCargos_Empleados]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadosCargos] DROP CONSTRAINT [FK_EmpleadosCargos_Empleados];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadosCargos_Cargos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadosCargos] DROP CONSTRAINT [FK_EmpleadosCargos_Cargos];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadosVacaciones]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VacacionesSet] DROP CONSTRAINT [FK_EmpleadosVacaciones];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadosPermisos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PermisosSet] DROP CONSTRAINT [FK_EmpleadosPermisos];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadosLicencias]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LicenciasSet] DROP CONSTRAINT [FK_EmpleadosLicencias];
GO
IF OBJECT_ID(N'[dbo].[FK_SalidaDEmpleadosEmpleados]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadosSet] DROP CONSTRAINT [FK_SalidaDEmpleadosEmpleados];
GO
IF OBJECT_ID(N'[dbo].[FK_CalculoDeNominaEmpleados]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadosSet] DROP CONSTRAINT [FK_CalculoDeNominaEmpleados];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[EmpleadosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmpleadosSet];
GO
IF OBJECT_ID(N'[dbo].[DepartamentosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DepartamentosSet];
GO
IF OBJECT_ID(N'[dbo].[CargosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CargosSet];
GO
IF OBJECT_ID(N'[dbo].[CalculoDeNominaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CalculoDeNominaSet];
GO
IF OBJECT_ID(N'[dbo].[SalidaDEmpleadosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SalidaDEmpleadosSet];
GO
IF OBJECT_ID(N'[dbo].[VacacionesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VacacionesSet];
GO
IF OBJECT_ID(N'[dbo].[PermisosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PermisosSet];
GO
IF OBJECT_ID(N'[dbo].[LicenciasSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LicenciasSet];
GO
IF OBJECT_ID(N'[dbo].[EmpleadosDepartamentos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmpleadosDepartamentos];
GO
IF OBJECT_ID(N'[dbo].[EmpleadosCargos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmpleadosCargos];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'EmpleadosSet'
CREATE TABLE [dbo].[EmpleadosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodEmpleado] smallint  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Apellido] nvarchar(max)  NOT NULL,
    [Teléfono] nvarchar(max)  NOT NULL,
    [Departamento] nvarchar(max)  NOT NULL,
    [Cargo] nvarchar(max)  NOT NULL,
    [FechaIngreso] datetime  NOT NULL,
    [Salario] float  NOT NULL,
    [Estatus] nvarchar(max)  NOT NULL,
    [CalculoDeNomina_Id] int  NOT NULL
);
GO

-- Creating table 'DepartamentosSet'
CREATE TABLE [dbo].[DepartamentosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CoDepartamento] nvarchar(max)  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CargosSet'
CREATE TABLE [dbo].[CargosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Cargo] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CalculoDeNominaSet'
CREATE TABLE [dbo].[CalculoDeNominaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Año] smallint  NOT NULL,
    [Mes] smallint  NOT NULL,
    [MontoTotal] smallint  NOT NULL
);
GO

-- Creating table 'SalidaDEmpleadosSet'
CREATE TABLE [dbo].[SalidaDEmpleadosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Empleado] nvarchar(max)  NOT NULL,
    [TipoSalida] nvarchar(max)  NOT NULL,
    [Motivo] nvarchar(max)  NOT NULL,
    [FechaSalida] datetime  NOT NULL,
    [Empleados_Id] int  NOT NULL
);
GO

-- Creating table 'VacacionesSet'
CREATE TABLE [dbo].[VacacionesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Empleado] nvarchar(max)  NOT NULL,
    [Desde] datetime  NOT NULL,
    [Hasta] datetime  NOT NULL,
    [AñoCorrespo] datetime  NOT NULL,
    [Comentarios] nvarchar(max)  NOT NULL,
    [Empleados_Id] int  NOT NULL
);
GO

-- Creating table 'PermisosSet'
CREATE TABLE [dbo].[PermisosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Empleado] nvarchar(max)  NOT NULL,
    [Desde] datetime  NOT NULL,
    [Hasta] datetime  NOT NULL,
    [Comentarios] nvarchar(max)  NOT NULL,
    [Empleados_Id] int  NOT NULL
);
GO

-- Creating table 'LicenciasSet'
CREATE TABLE [dbo].[LicenciasSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Empleado] nvarchar(max)  NOT NULL,
    [Desde] datetime  NOT NULL,
    [Hasta] datetime  NOT NULL,
    [Motivo] nvarchar(max)  NOT NULL,
    [Comentarios] nvarchar(max)  NOT NULL,
    [Empleados_Id] int  NOT NULL
);
GO

-- Creating table 'EmpleadosDepartamentos'
CREATE TABLE [dbo].[EmpleadosDepartamentos] (
    [Empleados_Id] int  NOT NULL,
    [Departamentos_Id] int  NOT NULL
);
GO

-- Creating table 'EmpleadosCargos'
CREATE TABLE [dbo].[EmpleadosCargos] (
    [Empleados_Id] int  NOT NULL,
    [Cargos_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'EmpleadosSet'
ALTER TABLE [dbo].[EmpleadosSet]
ADD CONSTRAINT [PK_EmpleadosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DepartamentosSet'
ALTER TABLE [dbo].[DepartamentosSet]
ADD CONSTRAINT [PK_DepartamentosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CargosSet'
ALTER TABLE [dbo].[CargosSet]
ADD CONSTRAINT [PK_CargosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CalculoDeNominaSet'
ALTER TABLE [dbo].[CalculoDeNominaSet]
ADD CONSTRAINT [PK_CalculoDeNominaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SalidaDEmpleadosSet'
ALTER TABLE [dbo].[SalidaDEmpleadosSet]
ADD CONSTRAINT [PK_SalidaDEmpleadosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VacacionesSet'
ALTER TABLE [dbo].[VacacionesSet]
ADD CONSTRAINT [PK_VacacionesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PermisosSet'
ALTER TABLE [dbo].[PermisosSet]
ADD CONSTRAINT [PK_PermisosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LicenciasSet'
ALTER TABLE [dbo].[LicenciasSet]
ADD CONSTRAINT [PK_LicenciasSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Empleados_Id], [Departamentos_Id] in table 'EmpleadosDepartamentos'
ALTER TABLE [dbo].[EmpleadosDepartamentos]
ADD CONSTRAINT [PK_EmpleadosDepartamentos]
    PRIMARY KEY CLUSTERED ([Empleados_Id], [Departamentos_Id] ASC);
GO

-- Creating primary key on [Empleados_Id], [Cargos_Id] in table 'EmpleadosCargos'
ALTER TABLE [dbo].[EmpleadosCargos]
ADD CONSTRAINT [PK_EmpleadosCargos]
    PRIMARY KEY CLUSTERED ([Empleados_Id], [Cargos_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Empleados_Id] in table 'EmpleadosDepartamentos'
ALTER TABLE [dbo].[EmpleadosDepartamentos]
ADD CONSTRAINT [FK_EmpleadosDepartamentos_Empleados]
    FOREIGN KEY ([Empleados_Id])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Departamentos_Id] in table 'EmpleadosDepartamentos'
ALTER TABLE [dbo].[EmpleadosDepartamentos]
ADD CONSTRAINT [FK_EmpleadosDepartamentos_Departamentos]
    FOREIGN KEY ([Departamentos_Id])
    REFERENCES [dbo].[DepartamentosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadosDepartamentos_Departamentos'
CREATE INDEX [IX_FK_EmpleadosDepartamentos_Departamentos]
ON [dbo].[EmpleadosDepartamentos]
    ([Departamentos_Id]);
GO

-- Creating foreign key on [Empleados_Id] in table 'EmpleadosCargos'
ALTER TABLE [dbo].[EmpleadosCargos]
ADD CONSTRAINT [FK_EmpleadosCargos_Empleados]
    FOREIGN KEY ([Empleados_Id])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Cargos_Id] in table 'EmpleadosCargos'
ALTER TABLE [dbo].[EmpleadosCargos]
ADD CONSTRAINT [FK_EmpleadosCargos_Cargos]
    FOREIGN KEY ([Cargos_Id])
    REFERENCES [dbo].[CargosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadosCargos_Cargos'
CREATE INDEX [IX_FK_EmpleadosCargos_Cargos]
ON [dbo].[EmpleadosCargos]
    ([Cargos_Id]);
GO

-- Creating foreign key on [Empleados_Id] in table 'VacacionesSet'
ALTER TABLE [dbo].[VacacionesSet]
ADD CONSTRAINT [FK_EmpleadosVacaciones]
    FOREIGN KEY ([Empleados_Id])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadosVacaciones'
CREATE INDEX [IX_FK_EmpleadosVacaciones]
ON [dbo].[VacacionesSet]
    ([Empleados_Id]);
GO

-- Creating foreign key on [Empleados_Id] in table 'PermisosSet'
ALTER TABLE [dbo].[PermisosSet]
ADD CONSTRAINT [FK_EmpleadosPermisos]
    FOREIGN KEY ([Empleados_Id])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadosPermisos'
CREATE INDEX [IX_FK_EmpleadosPermisos]
ON [dbo].[PermisosSet]
    ([Empleados_Id]);
GO

-- Creating foreign key on [Empleados_Id] in table 'LicenciasSet'
ALTER TABLE [dbo].[LicenciasSet]
ADD CONSTRAINT [FK_EmpleadosLicencias]
    FOREIGN KEY ([Empleados_Id])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadosLicencias'
CREATE INDEX [IX_FK_EmpleadosLicencias]
ON [dbo].[LicenciasSet]
    ([Empleados_Id]);
GO

-- Creating foreign key on [Empleados_Id] in table 'SalidaDEmpleadosSet'
ALTER TABLE [dbo].[SalidaDEmpleadosSet]
ADD CONSTRAINT [FK_SalidaDEmpleadosEmpleados]
    FOREIGN KEY ([Empleados_Id])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SalidaDEmpleadosEmpleados'
CREATE INDEX [IX_FK_SalidaDEmpleadosEmpleados]
ON [dbo].[SalidaDEmpleadosSet]
    ([Empleados_Id]);
GO

-- Creating foreign key on [CalculoDeNomina_Id] in table 'EmpleadosSet'
ALTER TABLE [dbo].[EmpleadosSet]
ADD CONSTRAINT [FK_CalculoDeNominaEmpleados]
    FOREIGN KEY ([CalculoDeNomina_Id])
    REFERENCES [dbo].[CalculoDeNominaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CalculoDeNominaEmpleados'
CREATE INDEX [IX_FK_CalculoDeNominaEmpleados]
ON [dbo].[EmpleadosSet]
    ([CalculoDeNomina_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------