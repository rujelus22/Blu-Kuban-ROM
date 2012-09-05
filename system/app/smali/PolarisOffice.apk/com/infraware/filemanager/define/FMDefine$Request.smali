.class public Lcom/infraware/filemanager/define/FMDefine$Request;
.super Ljava/lang/Object;
.source "FMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/define/FMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Request"
.end annotation


# static fields
.field public static final DIALOG_ADD_BOXNET:I = 0x101

.field public static final DIALOG_ADD_GOOGLE:I = 0x100

.field private static final FMRequest:I = 0x100


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/define/FMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/define/FMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/infraware/filemanager/define/FMDefine$Request;->this$0:Lcom/infraware/filemanager/define/FMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
