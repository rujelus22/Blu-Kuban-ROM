.class public interface abstract Landroid/support/place/connector/security/ISecurityService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract addCertificate(Landroid/support/place/connector/security/Account;Ljava/lang/String;)V
.end method

.method public abstract addRole(Landroid/support/place/connector/security/Account;Ljava/lang/String;)V
.end method

.method public abstract addTrustedPeerCert(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getAccounts(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getCertificates(Landroid/support/place/connector/security/Account;)Ljava/util/List;
.end method

.method public abstract getRoles(Landroid/support/place/connector/security/Account;)Ljava/util/List;
.end method

.method public abstract isGuestModeEnabled()Z
.end method

.method public abstract revokeAccount(Landroid/support/place/connector/security/Account;)V
.end method

.method public abstract revokeCertificate(Ljava/lang/String;)V
.end method

.method public abstract revokeRole(Landroid/support/place/connector/security/Account;Ljava/lang/String;)V
.end method
