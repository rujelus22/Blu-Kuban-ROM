.class final Lcom/dropbox/android/service/i;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private final a:Lcom/dropbox/android/service/f;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/dropbox/android/service/f;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1331
    iput-object p1, p0, Lcom/dropbox/android/service/i;->a:Lcom/dropbox/android/service/f;

    .line 1332
    iput p2, p0, Lcom/dropbox/android/service/i;->b:I

    .line 1333
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/service/i;)Lcom/dropbox/android/service/f;
    .registers 2
    .parameter

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/dropbox/android/service/i;->a:Lcom/dropbox/android/service/f;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/android/service/i;)I
    .registers 2
    .parameter

    .prologue
    .line 1325
    iget v0, p0, Lcom/dropbox/android/service/i;->b:I

    return v0
.end method
