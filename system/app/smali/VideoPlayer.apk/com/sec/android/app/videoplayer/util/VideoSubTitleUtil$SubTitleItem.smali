.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubTitleItem"
.end annotation


# instance fields
.field private mCheckBoxEnable:Z

.field private mSettingItem:Ljava/lang/String;

.field private mSettingValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "checkBox"
    .parameter "item"
    .parameter "value"

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1109
    iput-object p3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->mSettingItem:Ljava/lang/String;

    .line 1110
    iput-object p4, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->mSettingValue:Ljava/lang/String;

    .line 1111
    iput-boolean p2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->mCheckBoxEnable:Z

    .line 1112
    return-void
.end method


# virtual methods
.method public getCheckBoxState()Z
    .registers 2

    .prologue
    .line 1123
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->mCheckBoxEnable:Z

    return v0
.end method

.method public getItem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->mSettingItem:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->mSettingValue:Ljava/lang/String;

    return-object v0
.end method
