.class Lcom/cooliris/media/BitmapManager$ThreadStatus;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadStatus"
.end annotation


# instance fields
.field public mOptions:Landroid/graphics/BitmapFactory$Options;

.field public mState:Lcom/cooliris/media/BitmapManager$State;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/cooliris/media/BitmapManager$State;->ALLOW:Lcom/cooliris/media/BitmapManager$State;

    iput-object v0, p0, Lcom/cooliris/media/BitmapManager$ThreadStatus;->mState:Lcom/cooliris/media/BitmapManager$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cooliris/media/BitmapManager$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/cooliris/media/BitmapManager$ThreadStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 53
    iget-object v1, p0, Lcom/cooliris/media/BitmapManager$ThreadStatus;->mState:Lcom/cooliris/media/BitmapManager$State;

    sget-object v2, Lcom/cooliris/media/BitmapManager$State;->CANCEL:Lcom/cooliris/media/BitmapManager$State;

    if-ne v1, v2, :cond_28

    .line 54
    const-string v0, "Cancel"

    .line 60
    .local v0, s:Ljava/lang/String;
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", options = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    return-object v0

    .line 55
    .end local v0           #s:Ljava/lang/String;
    :cond_28
    iget-object v1, p0, Lcom/cooliris/media/BitmapManager$ThreadStatus;->mState:Lcom/cooliris/media/BitmapManager$State;

    sget-object v2, Lcom/cooliris/media/BitmapManager$State;->ALLOW:Lcom/cooliris/media/BitmapManager$State;

    if-ne v1, v2, :cond_31

    .line 56
    const-string v0, "Allow"

    .restart local v0       #s:Ljava/lang/String;
    goto :goto_8

    .line 58
    .end local v0           #s:Ljava/lang/String;
    :cond_31
    const-string v0, "?"

    .restart local v0       #s:Ljava/lang/String;
    goto :goto_8
.end method
