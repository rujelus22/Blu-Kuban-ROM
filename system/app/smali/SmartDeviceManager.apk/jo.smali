.class public abstract Ljo;
.super Ljk;
.source "a"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljk;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract g()Ljava/lang/reflect/Member;
.end method

.method public final h()V
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Ljo;->g()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-static {v0}, Lme;->a(Ljava/lang/reflect/Member;)V

    .line 31
    return-void
.end method
