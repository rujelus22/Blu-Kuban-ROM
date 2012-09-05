.class final Lmh$a;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "a"
.end annotation


# instance fields
.field final a:[Ljava/lang/Object;

.field b:Lmh$a;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lmh$a;->a:[Ljava/lang/Object;

    .line 243
    return-void
.end method
