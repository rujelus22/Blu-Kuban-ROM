.class Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;
.super Ljava/lang/Object;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchItemQueryInfo"
.end annotation


# instance fields
.field private final chooserTitle:Ljava/lang/String;

.field private final mime:Ljava/lang/String;

.field private final query:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/AudioPreview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "chooser_title"
    .parameter "query"
    .parameter "title"
    .parameter "mime"

    .prologue
    .line 6137
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6138
    iput-object p2, p0, Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;->chooserTitle:Ljava/lang/String;

    .line 6139
    iput-object p3, p0, Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;->query:Ljava/lang/String;

    .line 6140
    iput-object p4, p0, Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;->title:Ljava/lang/String;

    .line 6141
    iput-object p5, p0, Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;->mime:Ljava/lang/String;

    .line 6142
    return-void
.end method


# virtual methods
.method public getMime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6126
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;->mime:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6118
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6122
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;->title:Ljava/lang/String;

    return-object v0
.end method
