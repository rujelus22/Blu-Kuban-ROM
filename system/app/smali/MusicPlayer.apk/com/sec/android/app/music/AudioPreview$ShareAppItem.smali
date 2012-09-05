.class Lcom/sec/android/app/music/AudioPreview$ShareAppItem;
.super Ljava/lang/Object;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareAppItem"
.end annotation


# instance fields
.field private final mAppIcon:Landroid/graphics/drawable/Drawable;

.field private final mAppName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/AudioPreview;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "appicon"
    .parameter "appname"

    .prologue
    .line 6171
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$ShareAppItem;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6172
    iput-object p2, p0, Lcom/sec/android/app/music/AudioPreview$ShareAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 6173
    iput-object p3, p0, Lcom/sec/android/app/music/AudioPreview$ShareAppItem;->mAppName:Ljava/lang/String;

    .line 6174
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 6177
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$ShareAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6181
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$ShareAppItem;->mAppName:Ljava/lang/String;

    return-object v0
.end method
