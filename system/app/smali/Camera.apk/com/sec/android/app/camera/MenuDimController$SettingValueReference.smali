.class Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/MenuDimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingValueReference"
.end annotation


# instance fields
.field private mReferenceCount:I

.field private final mSettingValue:I

.field final synthetic this$0:Lcom/sec/android/app/camera/MenuDimController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/MenuDimController;I)V
    .registers 4
    .parameter
    .parameter "settingsValue"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->mReferenceCount:I

    .line 101
    iput p2, p0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->mSettingValue:I

    .line 102
    return-void
.end method


# virtual methods
.method public decreaseReferenceCount()V
    .registers 4

    .prologue
    .line 118
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->mReferenceCount:I

    if-lez v0, :cond_a

    .line 119
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->mReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->mReferenceCount:I

    .line 121
    :cond_a
    const-string v0, "MenuDimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decreaseReferenceCount: mReferenceCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->mReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public getReferenceCount()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->mReferenceCount:I

    return v0
.end method

.method public getSettingsValue()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->mSettingValue:I

    return v0
.end method

.method public increaseReferenceCount()V
    .registers 4

    .prologue
    .line 113
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->mReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->mReferenceCount:I

    .line 114
    const-string v0, "MenuDimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increaseReferenceCount: mReferenceCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->mReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method
