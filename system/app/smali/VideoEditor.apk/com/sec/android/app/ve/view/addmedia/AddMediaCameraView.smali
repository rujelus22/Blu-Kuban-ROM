.class public Lcom/sec/android/app/ve/view/addmedia/AddMediaCameraView;
.super Ljava/lang/Object;
.source "AddMediaCameraView.java"


# static fields
.field private static _instance:Lcom/sec/android/app/ve/view/addmedia/AddMediaCameraView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMediaCameraView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMediaCameraView;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaCameraView;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMediaCameraView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMediaCameraView;

    if-nez v0, :cond_b

    .line 42
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddMediaCameraView;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaCameraView;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMediaCameraView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMediaCameraView;

    .line 44
    :cond_b
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMediaCameraView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMediaCameraView;

    return-object v0
.end method


# virtual methods
.method public launchCameraSelectionDialog()V
    .registers 1

    .prologue
    .line 83
    return-void
.end method
