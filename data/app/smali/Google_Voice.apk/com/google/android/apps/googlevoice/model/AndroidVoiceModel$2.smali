.class Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$2;
.super Ljava/lang/Object;
.source "AndroidVoiceModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;-><init>(Lcom/google/android/apps/googlevoice/model/ActionModel;Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/proxy/ContextProxy;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;Lcom/google/android/apps/googlevoice/system/VersionHelper;Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$2;->this$0:Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 6
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 174
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    check-cast p1, Ljava/io/File;

    .end local p1
    check-cast p2, Ljava/io/File;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/model/AndroidVoiceModel$2;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
