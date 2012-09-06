.class LFL;
.super Ljava/lang/Object;
.source "ImageFetcher.java"


# instance fields
.field private final a:I

.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, LFL;->a:Ljava/lang/String;

    .line 50
    iput p2, p0, LFL;->a:I

    .line 51
    return-void
.end method

.method static synthetic a(LFL;)I
    .registers 2
    .parameter

    .prologue
    .line 44
    iget v0, p0, LFL;->a:I

    return v0
.end method

.method static synthetic a(LFL;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, LFL;->a:Ljava/lang/String;

    return-object v0
.end method
