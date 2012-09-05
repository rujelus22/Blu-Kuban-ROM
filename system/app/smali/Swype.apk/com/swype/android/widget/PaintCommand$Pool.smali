.class public Lcom/swype/android/widget/PaintCommand$Pool;
.super Ljava/lang/Object;
.source "PaintCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/widget/PaintCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pool"
.end annotation


# instance fields
.field final POOL_MAX_COUNT:I

.field private final pool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/swype/android/widget/PaintCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/swype/android/widget/PaintCommand$Pool;->POOL_MAX_COUNT:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/widget/PaintCommand$Pool;->pool:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public checkin(Lcom/swype/android/widget/PaintCommand;)V
    .registers 4
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/swype/android/widget/PaintCommand$Pool;->pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_f

    .line 85
    iget-object v0, p0, Lcom/swype/android/widget/PaintCommand$Pool;->pool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_f
    return-void
.end method

.method public checkout(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;
    .registers 5
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/swype/android/widget/PaintCommand$Pool;->pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 62
    new-instance v0, Lcom/swype/android/widget/PaintCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/swype/android/widget/PaintCommand;-><init>(Lcom/swype/android/widget/PaintCommandType;Lcom/swype/android/widget/PaintCommand$1;)V

    .line 68
    :goto_e
    return-object v0

    .line 65
    :cond_f
    iget-object v0, p0, Lcom/swype/android/widget/PaintCommand$Pool;->pool:Ljava/util/List;

    iget-object v1, p0, Lcom/swype/android/widget/PaintCommand$Pool;->pool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/swype/android/widget/PaintCommand;

    .line 66
    #setter for: Lcom/swype/android/widget/PaintCommand;->type:Lcom/swype/android/widget/PaintCommandType;
    invoke-static {p0, p1}, Lcom/swype/android/widget/PaintCommand;->access$102(Lcom/swype/android/widget/PaintCommand;Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommandType;

    .line 67
    #calls: Lcom/swype/android/widget/PaintCommand;->ensureCapacity()V
    invoke-static {p0}, Lcom/swype/android/widget/PaintCommand;->access$200(Lcom/swype/android/widget/PaintCommand;)V

    move-object v0, p0

    .line 68
    goto :goto_e
.end method

.method public checkout(Ljava/lang/String;)Lcom/swype/android/widget/PaintCommand;
    .registers 7
    .parameter "commandString"

    .prologue
    .line 73
    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand$Pool;->pool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1d

    .line 74
    iget-object v2, p0, Lcom/swype/android/widget/PaintCommand$Pool;->pool:Ljava/util/List;

    iget-object v3, p0, Lcom/swype/android/widget/PaintCommand$Pool;->pool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/PaintCommand;

    .line 75
    .local v0, c:Lcom/swype/android/widget/PaintCommand;
    #calls: Lcom/swype/android/widget/PaintCommand;->initWithCommandStr(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/swype/android/widget/PaintCommand;->access$300(Lcom/swype/android/widget/PaintCommand;Ljava/lang/String;)V

    move-object v2, v0

    .line 80
    .end local v0           #c:Lcom/swype/android/widget/PaintCommand;
    :goto_1c
    return-object v2

    .line 78
    :cond_1d
    new-instance v1, Lcom/swype/android/widget/PaintCommand;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/swype/android/widget/PaintCommand;-><init>(Lcom/swype/android/widget/PaintCommand$1;)V

    .line 79
    .local v1, p:Lcom/swype/android/widget/PaintCommand;
    #calls: Lcom/swype/android/widget/PaintCommand;->initWithCommandStr(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/swype/android/widget/PaintCommand;->access$300(Lcom/swype/android/widget/PaintCommand;Ljava/lang/String;)V

    move-object v2, v1

    .line 80
    goto :goto_1c
.end method
