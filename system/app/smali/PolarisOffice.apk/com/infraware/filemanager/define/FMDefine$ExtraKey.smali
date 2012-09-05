.class public Lcom/infraware/filemanager/define/FMDefine$ExtraKey;
.super Ljava/lang/Object;
.source "FMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/define/FMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtraKey"
.end annotation


# static fields
.field public static final CURRENT_FILE:Ljava/lang/String; = "key_current_file"

.field public static final CURRENT_FOLDER:Ljava/lang/String; = "key_current_folder"

.field public static final DIALOG_TITLE:Ljava/lang/String; = "key_dialog_title"

.field public static final INTERNAL_MODE:Ljava/lang/String; = "key_interanl_mode"

.field public static final LOGIN_ID:Ljava/lang/String; = "key_login_id"

.field public static final NEW_FOLDER:Ljava/lang/String; = "key_new_folder"

.field public static final OPEN_TYPE:Ljava/lang/String; = "key_open_type"

.field public static final PROPERTY:Ljava/lang/String; = "key_property"

.field public static final RECENT_CLOSE:Ljava/lang/String; = "key_recent_close"

.field public static final SELECT_FILES:Ljava/lang/String; = "key_select_files"


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/define/FMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/define/FMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/infraware/filemanager/define/FMDefine$ExtraKey;->this$0:Lcom/infraware/filemanager/define/FMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
