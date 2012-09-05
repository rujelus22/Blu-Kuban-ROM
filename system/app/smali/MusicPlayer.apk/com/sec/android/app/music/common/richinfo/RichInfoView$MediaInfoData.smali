.class Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;
.super Ljava/lang/Object;
.source "RichInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/richinfo/RichInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaInfoData"
.end annotation


# instance fields
.field protected context:Ljava/lang/String;

.field protected textId:I

.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/common/richinfo/RichInfoView;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 343
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->this$0:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->textId:I

    .line 345
    iput-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->title:Ljava/lang/String;

    .line 346
    iput-object v1, p0, Lcom/sec/android/app/music/common/richinfo/RichInfoView$MediaInfoData;->context:Ljava/lang/String;

    .line 347
    return-void
.end method
