.class public Lcom/infraware/filemanager/define/FMDefine$InternalMode;
.super Ljava/lang/Object;
.source "FMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/define/FMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalMode"
.end annotation


# static fields
.field public static final FILE_ALL:I = 0x1

.field public static final FILE_FAVORITE:I = 0x8

.field public static final FILE_IMAGE:I = 0x3

.field public static final FILE_MULTI:I = 0x6

.field public static final FILE_POLARISOFFICE:I = 0x9

.field public static final FILE_RECENT:I = 0x4

.field public static final FILE_UPLOAD:I = 0x7

.field public static final NONE:I = 0x0

.field public static final ONLY_FOLDER:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/define/FMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/define/FMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/infraware/filemanager/define/FMDefine$InternalMode;->this$0:Lcom/infraware/filemanager/define/FMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
