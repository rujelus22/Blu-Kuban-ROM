.class Lcom/google/tts/TTSService$SpeechItem;
.super Ljava/lang/Object;
.source "TTSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tts/TTSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpeechItem"
.end annotation


# static fields
.field public static final EARCON:I = 0x1

.field public static final SILENCE:I = 0x2

.field public static final TEXT:I = 0x0

.field public static final TEXT_TO_FILE:I = 0x3


# instance fields
.field public mCallingApp:Ljava/lang/String;

.field public mDuration:J

.field public mFilename:Ljava/lang/String;

.field public mParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mText:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/ArrayList;)V
    .registers 8
    .parameter "source"
    .parameter "silenceTime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/tts/TTSService$SpeechItem;->mText:Ljava/lang/String;

    .line 125
    iput-object v2, p0, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tts/TTSService$SpeechItem;->mType:I

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/tts/TTSService$SpeechItem;->mDuration:J

    .line 131
    iput-object v2, p0, Lcom/google/tts/TTSService$SpeechItem;->mFilename:Ljava/lang/String;

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 143
    iput-wide p2, p0, Lcom/google/tts/TTSService$SpeechItem;->mDuration:J

    .line 144
    iput-object p4, p0, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 145
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/tts/TTSService$SpeechItem;->mType:I

    .line 146
    iput-object p1, p0, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .registers 8
    .parameter "source"
    .parameter "text"
    .parameter
    .parameter "itemType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/tts/TTSService$SpeechItem;->mText:Ljava/lang/String;

    .line 125
    iput-object v2, p0, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tts/TTSService$SpeechItem;->mType:I

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/tts/TTSService$SpeechItem;->mDuration:J

    .line 131
    iput-object v2, p0, Lcom/google/tts/TTSService$SpeechItem;->mFilename:Ljava/lang/String;

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/google/tts/TTSService$SpeechItem;->mText:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 138
    iput p4, p0, Lcom/google/tts/TTSService$SpeechItem;->mType:I

    .line 139
    iput-object p1, p0, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;)V
    .registers 9
    .parameter "source"
    .parameter "text"
    .parameter
    .parameter "itemType"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/tts/TTSService$SpeechItem;->mText:Ljava/lang/String;

    .line 125
    iput-object v2, p0, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tts/TTSService$SpeechItem;->mType:I

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/tts/TTSService$SpeechItem;->mDuration:J

    .line 131
    iput-object v2, p0, Lcom/google/tts/TTSService$SpeechItem;->mFilename:Ljava/lang/String;

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/google/tts/TTSService$SpeechItem;->mText:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lcom/google/tts/TTSService$SpeechItem;->mParams:Ljava/util/ArrayList;

    .line 153
    iput p4, p0, Lcom/google/tts/TTSService$SpeechItem;->mType:I

    .line 154
    iput-object p5, p0, Lcom/google/tts/TTSService$SpeechItem;->mFilename:Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/google/tts/TTSService$SpeechItem;->mCallingApp:Ljava/lang/String;

    .line 156
    return-void
.end method
