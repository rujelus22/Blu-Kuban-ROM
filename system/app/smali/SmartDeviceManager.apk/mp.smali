.class public abstract Lmp;
.super Lmm;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmp$a;
    }
.end annotation


# instance fields
.field d:Lmt;


# direct methods
.method protected constructor <init>(Lmt;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lmm;-><init>()V

    .line 27
    iput-object p1, p0, Lmp;->d:Lmt;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
