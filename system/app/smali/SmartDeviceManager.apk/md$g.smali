.class public final Lmd$g;
.super Lmi;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmi",
        "<[S>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 104
    invoke-direct {p0}, Lmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 101
    new-array v0, p1, [S

    return-object v0
.end method
