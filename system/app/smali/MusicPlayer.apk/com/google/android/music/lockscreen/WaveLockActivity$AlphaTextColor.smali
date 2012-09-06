.class Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;
.super Ljava/lang/Object;
.source "WaveLockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/lockscreen/WaveLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlphaTextColor"
.end annotation


# instance fields
.field private mTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;->mTextViews:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/lockscreen/WaveLockActivity$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;-><init>()V

    return-void
.end method


# virtual methods
.method public addTextView(Landroid/widget/TextView;)V
    .registers 3
    .parameter "textView"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;->mTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method
