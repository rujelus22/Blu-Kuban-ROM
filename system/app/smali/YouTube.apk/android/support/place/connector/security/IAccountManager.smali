.class public interface abstract Landroid/support/place/connector/security/IAccountManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract authenticate(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)Landroid/support/place/connector/security/AccountWithRoles;
.end method

.method public abstract configure(Landroid/support/place/rpc/RpcData;)Landroid/support/place/rpc/RpcData;
.end method

.method public abstract onGuestModeChanged(Z)V
.end method

.method public abstract revoke(Landroid/support/place/connector/security/Account;)V
.end method

.method public abstract setSecurityService(Landroid/support/place/connector/security/ISecurityService;)V
.end method

.method public abstract updateRoles(Landroid/support/place/connector/security/Account;Ljava/util/List;Ljava/util/List;)V
.end method
