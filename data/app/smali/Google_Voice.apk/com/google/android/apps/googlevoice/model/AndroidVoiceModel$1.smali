.class Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$1;
.super Ljava/lang/Object;
.source "AndroidVoiceModel.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;-><init>(Lcom/google/android/apps/googlevoice/model/ActionModel;Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/proxy/ContextProxy;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;Lcom/google/android/apps/googlevoice/system/VersionHelper;Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$1;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .parameter "dir"
    .parameter "filename"

    .prologue
    .line 167
    const-string v0, ".mp3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
