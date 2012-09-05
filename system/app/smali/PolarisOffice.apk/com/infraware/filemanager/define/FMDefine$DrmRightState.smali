.class public Lcom/infraware/filemanager/define/FMDefine$DrmRightState;
.super Ljava/lang/Object;
.source "FMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/define/FMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrmRightState"
.end annotation


# static fields
.field public static final INVALID:I = 0x0

.field public static final NOT_DRM:I = -0x1

.field public static final VALID:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/define/FMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/define/FMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/infraware/filemanager/define/FMDefine$DrmRightState;->this$0:Lcom/infraware/filemanager/define/FMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
