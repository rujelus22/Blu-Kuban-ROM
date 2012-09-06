.class final LsS;
.super Ljava/lang/Object;
.source "SortKind.java"

# interfaces
.implements LsD;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/RoboFragmentActivity;J)LsB;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, LsA;

    sget-object v1, LMk;->k:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v2

    sget-object v3, LsC;->b:LsC;

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, LsA;-><init>(Landroid/content/Context;LLV;LsC;J)V

    return-object v0
.end method
