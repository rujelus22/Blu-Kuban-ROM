.class LDQ;
.super Ljava/lang/Object;
.source "QwertyKeyListener.java"

# interfaces
.implements Landroid/text/NoCopySpan;


# instance fields
.field private final a:[C


# direct methods
.method public constructor <init>([C)V
    .registers 2
    .parameter

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-object p1, p0, LDQ;->a:[C

    .line 522
    return-void
.end method

.method static synthetic a(LDQ;)[C
    .registers 2
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, LDQ;->a:[C

    return-object v0
.end method
