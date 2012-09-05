.class public Lcom/infraware/common/define/CMDefine$Config;
.super Ljava/lang/Object;
.source "CMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/define/CMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/define/CMDefine$Config$Key;,
        Lcom/infraware/common/define/CMDefine$Config$Section;
    }
.end annotation


# static fields
.field public static final SEPERATOR_STRING:Ljava/lang/String; = "<skarnd!dbal>"

.field public static final SETTING_CONFIG_FILE:Ljava/lang/String; = "dvToolbarConfig.ini"


# instance fields
.field final synthetic this$0:Lcom/infraware/common/define/CMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/common/define/CMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/infraware/common/define/CMDefine$Config;->this$0:Lcom/infraware/common/define/CMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
