.class public final Ljava/security/AccessControlContext;
.super Ljava/lang/Object;
.source "AccessControlContext.java"


# direct methods
.method public constructor <init>(Ljava/security/AccessControlContext;Ljava/security/DomainCombiner;)V
    .registers 3
    .parameter "acc"
    .parameter "combiner"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>([Ljava/security/ProtectionDomain;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/security/Permission;)V
    .registers 2
    .parameter "perm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/AccessControlException;
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public getDomainCombiner()Ljava/security/DomainCombiner;
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method
