.class public Lcom/infraware/common/define/CMDefine$ConfigEnv;
.super Ljava/lang/Object;
.source "CMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/define/CMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigEnv"
.end annotation


# static fields
.field public static final DM_DEF_LOCALE_UKENG:Z = true

.field public static final DM_LOCALE_GLOVAL:Z = true


# instance fields
.field final synthetic this$0:Lcom/infraware/common/define/CMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/common/define/CMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/infraware/common/define/CMDefine$ConfigEnv;->this$0:Lcom/infraware/common/define/CMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
