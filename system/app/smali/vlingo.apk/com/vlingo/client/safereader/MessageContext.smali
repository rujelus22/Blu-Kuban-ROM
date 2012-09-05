.class public Lcom/vlingo/client/safereader/MessageContext;
.super Ljava/lang/Object;
.source "MessageContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/safereader/MessageContext$MessageType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vlingo/client/safereader/MessageContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private body:Ljava/lang/String;

.field private headers:Ljava/lang/String;

.field private senderAddress:Ljava/lang/String;

.field private senderName:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private type:Lcom/vlingo/client/safereader/MessageContext$MessageType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    new-instance v0, Lcom/vlingo/client/safereader/MessageContext$1;

    invoke-direct {v0}, Lcom/vlingo/client/safereader/MessageContext$1;-><init>()V

    sput-object v0, Lcom/vlingo/client/safereader/MessageContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/safereader/MessageContext$MessageType;->valueOf(Ljava/lang/String;)Lcom/vlingo/client/safereader/MessageContext$MessageType;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->type:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->senderAddress:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->senderName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->body:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->subject:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->headers:Ljava/lang/String;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vlingo/client/safereader/MessageContext$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/vlingo/client/safereader/MessageContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/safereader/MessageContext$MessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "type"
    .parameter "senderAddress"
    .parameter "senderName"
    .parameter "body"

    .prologue
    const/4 v5, 0x0

    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/vlingo/client/safereader/MessageContext;-><init>(Lcom/vlingo/client/safereader/MessageContext$MessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private constructor <init>(Lcom/vlingo/client/safereader/MessageContext$MessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "type"
    .parameter "senderAddress"
    .parameter "senderName"
    .parameter "body"
    .parameter "subject"
    .parameter "headers"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/vlingo/client/safereader/MessageContext;->type:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    .line 35
    iput-object p2, p0, Lcom/vlingo/client/safereader/MessageContext;->senderAddress:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/vlingo/client/safereader/MessageContext;->senderName:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/vlingo/client/safereader/MessageContext;->body:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/vlingo/client/safereader/MessageContext;->subject:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/vlingo/client/safereader/MessageContext;->headers:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static newEmailContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/safereader/MessageContext;
    .registers 12
    .parameter "senderAddress"
    .parameter "senderName"
    .parameter "body"
    .parameter "subject"
    .parameter "headers"

    .prologue
    .line 73
    new-instance v0, Lcom/vlingo/client/safereader/MessageContext;

    sget-object v1, Lcom/vlingo/client/safereader/MessageContext$MessageType;->EMAIL:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/vlingo/client/safereader/MessageContext;-><init>(Lcom/vlingo/client/safereader/MessageContext$MessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newMMSContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/safereader/MessageContext;
    .registers 10
    .parameter "senderAddress"
    .parameter "senderName"
    .parameter "subject"

    .prologue
    const/4 v4, 0x0

    .line 69
    new-instance v0, Lcom/vlingo/client/safereader/MessageContext;

    sget-object v1, Lcom/vlingo/client/safereader/MessageContext$MessageType;->MMS:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/vlingo/client/safereader/MessageContext;-><init>(Lcom/vlingo/client/safereader/MessageContext$MessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newSMSContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/safereader/MessageContext;
    .registers 5
    .parameter "senderAddress"
    .parameter "senderName"
    .parameter "body"

    .prologue
    .line 65
    new-instance v0, Lcom/vlingo/client/safereader/MessageContext;

    sget-object v1, Lcom/vlingo/client/safereader/MessageContext$MessageType;->SMS:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/vlingo/client/safereader/MessageContext;-><init>(Lcom/vlingo/client/safereader/MessageContext$MessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 137
    instance-of v2, p1, Lcom/vlingo/client/safereader/MessageContext;

    if-eqz v2, :cond_8b

    move-object v0, p1

    .line 138
    check-cast v0, Lcom/vlingo/client/safereader/MessageContext;

    .line 139
    .local v0, c:Lcom/vlingo/client/safereader/MessageContext;
    const/4 v1, 0x1

    .line 140
    .local v1, isEqual:Z
    iget-object v2, v0, Lcom/vlingo/client/safereader/MessageContext;->type:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    iget-object v5, p0, Lcom/vlingo/client/safereader/MessageContext;->type:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    if-ne v2, v5, :cond_83

    move v2, v3

    :goto_11
    and-int/2addr v1, v2

    .line 141
    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->senderAddress:Ljava/lang/String;

    if-nez v2, :cond_1a

    iget-object v2, v0, Lcom/vlingo/client/safereader/MessageContext;->senderAddress:Ljava/lang/String;

    if-eqz v2, :cond_2c

    :cond_1a
    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->senderAddress:Ljava/lang/String;

    if-eqz v2, :cond_85

    iget-object v2, v0, Lcom/vlingo/client/safereader/MessageContext;->senderAddress:Ljava/lang/String;

    if-eqz v2, :cond_85

    iget-object v2, v0, Lcom/vlingo/client/safereader/MessageContext;->senderAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/vlingo/client/safereader/MessageContext;->senderAddress:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    :cond_2c
    move v2, v3

    :goto_2d
    and-int/2addr v1, v2

    .line 142
    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->body:Ljava/lang/String;

    if-nez v2, :cond_36

    iget-object v2, v0, Lcom/vlingo/client/safereader/MessageContext;->body:Ljava/lang/String;

    if-eqz v2, :cond_48

    :cond_36
    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->body:Ljava/lang/String;

    if-eqz v2, :cond_87

    iget-object v2, v0, Lcom/vlingo/client/safereader/MessageContext;->body:Ljava/lang/String;

    if-eqz v2, :cond_87

    iget-object v2, v0, Lcom/vlingo/client/safereader/MessageContext;->body:Ljava/lang/String;

    iget-object v5, p0, Lcom/vlingo/client/safereader/MessageContext;->body:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    :cond_48
    move v2, v3

    :goto_49
    and-int/2addr v1, v2

    .line 143
    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->senderName:Ljava/lang/String;

    if-nez v2, :cond_52

    iget-object v2, v0, Lcom/vlingo/client/safereader/MessageContext;->senderName:Ljava/lang/String;

    if-eqz v2, :cond_64

    :cond_52
    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->senderName:Ljava/lang/String;

    if-eqz v2, :cond_89

    iget-object v2, v0, Lcom/vlingo/client/safereader/MessageContext;->senderName:Ljava/lang/String;

    if-eqz v2, :cond_89

    iget-object v2, v0, Lcom/vlingo/client/safereader/MessageContext;->senderName:Ljava/lang/String;

    iget-object v5, p0, Lcom/vlingo/client/safereader/MessageContext;->senderName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    :cond_64
    move v2, v3

    :goto_65
    and-int/2addr v1, v2

    .line 144
    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->subject:Ljava/lang/String;

    if-nez v2, :cond_6e

    iget-object v2, v0, Lcom/vlingo/client/safereader/MessageContext;->subject:Ljava/lang/String;

    if-eqz v2, :cond_80

    :cond_6e
    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->subject:Ljava/lang/String;

    if-eqz v2, :cond_81

    iget-object v2, v0, Lcom/vlingo/client/safereader/MessageContext;->subject:Ljava/lang/String;

    if-eqz v2, :cond_81

    iget-object v2, v0, Lcom/vlingo/client/safereader/MessageContext;->subject:Ljava/lang/String;

    iget-object v5, p0, Lcom/vlingo/client/safereader/MessageContext;->subject:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    :cond_80
    move v4, v3

    :cond_81
    and-int/2addr v1, v4

    .line 147
    .end local v0           #c:Lcom/vlingo/client/safereader/MessageContext;
    .end local v1           #isEqual:Z
    :goto_82
    return v1

    .restart local v0       #c:Lcom/vlingo/client/safereader/MessageContext;
    .restart local v1       #isEqual:Z
    :cond_83
    move v2, v4

    .line 140
    goto :goto_11

    :cond_85
    move v2, v4

    .line 141
    goto :goto_2d

    :cond_87
    move v2, v4

    .line 142
    goto :goto_49

    :cond_89
    move v2, v4

    .line 143
    goto :goto_65

    .line 147
    .end local v0           #c:Lcom/vlingo/client/safereader/MessageContext;
    .end local v1           #isEqual:Z
    :cond_8b
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_82
.end method

.method public getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->headers:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    const-class v2, Lcom/vlingo/client/safereader/SafeReaderNotificationPopupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "EXTRA_TYPE"

    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->type:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    invoke-virtual {v2}, Lcom/vlingo/client/safereader/MessageContext$MessageType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v1, "EXTRA_ADDRESS"

    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->senderAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "EXTRA_NAME"

    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->senderName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "EXTRA_BODY"

    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->body:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "EXTRA_SUBJECT"

    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    return-object v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->senderAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/vlingo/client/safereader/MessageContext$MessageType;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->type:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 127
    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->type:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    invoke-virtual {v2}, Lcom/vlingo/client/safereader/MessageContext$MessageType;->ordinal()I

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->type:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    invoke-virtual {v2}, Lcom/vlingo/client/safereader/MessageContext$MessageType;->ordinal()I

    move-result v1

    .line 128
    .local v1, typeCode:I
    :goto_f
    mul-int/lit8 v0, v1, 0x7

    .line 129
    .local v0, hash:I
    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->senderAddress:Ljava/lang/String;

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->senderAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1b
    mul-int/2addr v0, v2

    .line 130
    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->body:Ljava/lang/String;

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->body:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_26
    mul-int/2addr v0, v2

    .line 131
    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->senderName:Ljava/lang/String;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->senderName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_31
    mul-int/2addr v0, v2

    .line 132
    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->subject:Ljava/lang/String;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->subject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_3c
    mul-int/2addr v0, v3

    .line 133
    return v0

    .line 127
    .end local v0           #hash:I
    .end local v1           #typeCode:I
    :cond_3e
    iget-object v2, p0, Lcom/vlingo/client/safereader/MessageContext;->type:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    invoke-virtual {v2}, Lcom/vlingo/client/safereader/MessageContext$MessageType;->ordinal()I

    move-result v2

    add-int/lit8 v1, v2, 0x7

    goto :goto_f

    .restart local v0       #hash:I
    .restart local v1       #typeCode:I
    :cond_47
    move v2, v3

    .line 129
    goto :goto_1b

    :cond_49
    move v2, v3

    .line 130
    goto :goto_26

    :cond_4b
    move v2, v3

    .line 131
    goto :goto_31
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/safereader/MessageContext;->getType()Lcom/vlingo/client/safereader/MessageContext$MessageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/safereader/MessageContext;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subj: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/safereader/MessageContext;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " addr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/safereader/MessageContext;->getSenderAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/safereader/MessageContext;->getSenderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->type:Lcom/vlingo/client/safereader/MessageContext$MessageType;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/MessageContext$MessageType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->senderAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->senderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageContext;->headers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return-void
.end method
