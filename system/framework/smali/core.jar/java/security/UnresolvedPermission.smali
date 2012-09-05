.class public final Ljava/security/UnresolvedPermission;
.super Ljava/security/Permission;
.source "UnresolvedPermission.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .registers 6
    .parameter "type"
    .parameter "name"
    .parameter "actions"
    .parameter "certs"

    .prologue
    .line 28
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnresolvedActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnresolvedCerts()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnresolvedName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnresolvedType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 3
    .parameter "permission"

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
