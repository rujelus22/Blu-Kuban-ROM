.class Lcom/google/googlenav/wallpaper/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/wallpaper/b;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/google/googlenav/wallpaper/b;)V
    .registers 3
    .parameter

    .prologue
    .line 930
    iput-object p1, p0, Lcom/google/googlenav/wallpaper/c;->a:Lcom/google/googlenav/wallpaper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/wallpaper/c;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/wallpaper/b;Lcom/google/googlenav/wallpaper/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 930
    invoke-direct {p0, p1}, Lcom/google/googlenav/wallpaper/c;-><init>(Lcom/google/googlenav/wallpaper/b;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    .prologue
    .line 935
    iget v0, p0, Lcom/google/googlenav/wallpaper/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/wallpaper/c;->b:I

    .line 936
    return-void
.end method

.method b()V
    .registers 2

    .prologue
    .line 939
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/wallpaper/c;->b:I

    .line 940
    return-void
.end method

.method c()V
    .registers 4

    .prologue
    .line 943
    iget v0, p0, Lcom/google/googlenav/wallpaper/c;->b:I

    if-lez v0, :cond_15

    .line 944
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 945
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlenav/wallpaper/c;->b:I

    shl-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 950
    int-to-long v0, v0

    :try_start_12
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_16

    .line 955
    :cond_15
    :goto_15
    return-void

    .line 951
    :catch_16
    move-exception v0

    goto :goto_15
.end method
