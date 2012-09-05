.class public Lcom/infraware/common/define/CMDefine$MediaType;
.super Ljava/lang/Object;
.source "CMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/define/CMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaType"
.end annotation


# static fields
.field public static final AUDIO:I = 0x2

.field public static final DOCUMENTS:I = 0x4

.field public static final IMAGE:I = 0x1

.field public static final OTHER:I = 0x0

.field public static final VIDEO:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/infraware/common/define/CMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/common/define/CMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/infraware/common/define/CMDefine$MediaType;->this$0:Lcom/infraware/common/define/CMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
