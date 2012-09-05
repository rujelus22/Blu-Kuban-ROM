.class public Lcom/infraware/common/define/CMDefine$Config$Section;
.super Ljava/lang/Object;
.source "CMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/define/CMDefine$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Section"
.end annotation


# static fields
.field public static final ACCOUNT_SECTION:Ljava/lang/String; = "ACCOUNT_SETTING"

.field public static final LIVE_UPDATE_SECTION:Ljava/lang/String; = "LIVE_UPDATE_SETTING"

.field public static final POLARIS_SECTION:Ljava/lang/String; = "POLSAIRS_DOCUMENT_SETTING"

.field public static final TOOLBAR_SECTION:Ljava/lang/String; = "TOOLBAR_SETTING"


# instance fields
.field final synthetic this$1:Lcom/infraware/common/define/CMDefine$Config;


# direct methods
.method public constructor <init>(Lcom/infraware/common/define/CMDefine$Config;)V
    .registers 2
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/infraware/common/define/CMDefine$Config$Section;->this$1:Lcom/infraware/common/define/CMDefine$Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
