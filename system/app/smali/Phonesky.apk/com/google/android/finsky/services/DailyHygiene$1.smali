.class Lcom/google/android/finsky/services/DailyHygiene$1;
.super Ljava/lang/Object;
.source "DailyHygiene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/DailyHygiene;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLoaded:I

.field final synthetic this$0:Lcom/google/android/finsky/services/DailyHygiene;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/DailyHygiene;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/finsky/services/DailyHygiene$1;->this$0:Lcom/google/android/finsky/services/DailyHygiene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 82
    iget v0, p0, Lcom/google/android/finsky/services/DailyHygiene$1;->mLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/services/DailyHygiene$1;->mLoaded:I

    .line 83
    iget v0, p0, Lcom/google/android/finsky/services/DailyHygiene$1;->mLoaded:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/services/DailyHygiene$1;->this$0:Lcom/google/android/finsky/services/DailyHygiene;

    #calls: Lcom/google/android/finsky/services/DailyHygiene;->onLoaded()V
    invoke-static {v0}, Lcom/google/android/finsky/services/DailyHygiene;->access$000(Lcom/google/android/finsky/services/DailyHygiene;)V

    .line 86
    :cond_10
    return-void
.end method
