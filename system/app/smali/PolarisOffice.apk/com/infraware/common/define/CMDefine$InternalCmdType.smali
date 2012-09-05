.class public Lcom/infraware/common/define/CMDefine$InternalCmdType;
.super Ljava/lang/Object;
.source "CMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/define/CMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalCmdType"
.end annotation


# static fields
.field public static final DM_CMD_KEYSTR:Ljava/lang/String; = "INTCMD"

.field public static final DM_INTCMD_NEWDOC:I = 0x1

.field public static final DM_INTCMD_NONE:I = 0x0

.field public static final DM_INTCMD_TEMPLATE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/infraware/common/define/CMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/common/define/CMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/infraware/common/define/CMDefine$InternalCmdType;->this$0:Lcom/infraware/common/define/CMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
