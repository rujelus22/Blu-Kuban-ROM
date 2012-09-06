.class public final Lub;
.super Lanf;
.source "EditorsApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Lanf;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lyj;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lub;->a([Ljava/lang/Class;)V

    .line 57
    return-void
.end method
