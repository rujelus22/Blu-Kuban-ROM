.class public final Lcom/dropbox/android/widget/Y;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/widget/Y;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/Y;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/dropbox/android/widget/Y;->a:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/filemanager/LocalEntry;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/dropbox/android/widget/Y;->a:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 67
    :cond_5
    :goto_5
    return v0

    .line 61
    :cond_6
    iget-object v1, p0, Lcom/dropbox/android/widget/Y;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-static {v2}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/widget/Y;->a:Ljava/lang/String;

    .line 64
    const/4 v0, 0x1

    goto :goto_5
.end method
