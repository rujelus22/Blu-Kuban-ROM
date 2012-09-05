.class public Lcom/infraware/common/define/CMDefine$ExtraKey;
.super Ljava/lang/Object;
.source "CMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/define/CMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtraKey"
.end annotation


# static fields
.field public static final ACCOUNT_EMAIL:Ljava/lang/String; = "key_account_email"

.field public static final ACCOUNT_PASSWORD:Ljava/lang/String; = "key_account_password"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "key_account_type"

.field public static final CALLER_PKG_NAME:Ljava/lang/String; = "key_caller_pkg_name"

.field public static final CHANGE_ORIENT:Ljava/lang/String; = "key_change_orient"

.field public static final CONTENT_MODE:Ljava/lang/String; = "key_content_mode"

.field public static final CURRENT_FILE:Ljava/lang/String; = "key_current_file"

.field public static final DISABLE_SEND_FILE:Ljava/lang/String; = "key_disable_send_file"

.field public static final INTERNAL_MODE:Ljava/lang/String; = "key_interanl_mode"

.field public static final IN_DOCUMENT_SETTING:Ljava/lang/String; = "key_in_document_setting"

.field public static final NEW_FILE:Ljava/lang/String; = "key_new_file"

.field public static final NEW_PPT_TEMPLATE:Ljava/lang/String; = "new_ppt_template"

.field public static final OPEN_FILE:Ljava/lang/String; = "key_filename"

.field public static final PPS_FILE:Ljava/lang/String; = "key_pps_file"

.field public static final PPS_FILE_PATH:Ljava/lang/String; = "key_pps_file_path"

.field public static final TEMPLATE_FILE:Ljava/lang/String; = "key_template_file"

.field public static final TEMPLATE_FORMAT:Ljava/lang/String; = "key_template_format"

.field public static final VERSION_NO:Ljava/lang/String; = "key_version"


# instance fields
.field final synthetic this$0:Lcom/infraware/common/define/CMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/common/define/CMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/infraware/common/define/CMDefine$ExtraKey;->this$0:Lcom/infraware/common/define/CMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
