.class public Ljavax/security/auth/SubjectDomainCombiner;
.super Ljava/lang/Object;
.source "SubjectDomainCombiner.java"

# interfaces
.implements Ljava/security/DomainCombiner;


# direct methods
.method public constructor <init>(Ljavax/security/auth/Subject;)V
    .registers 2
    .parameter "subject"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combine([Ljava/security/ProtectionDomain;[Ljava/security/ProtectionDomain;)[Ljava/security/ProtectionDomain;
    .registers 4
    .parameter "currentDomains"
    .parameter "assignedDomains"

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubject()Ljavax/security/auth/Subject;
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method
