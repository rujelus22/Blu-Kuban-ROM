.class public Lcom/android/vcard/VCardSourceDetector;
.super Ljava/lang/Object;
.source "VCardSourceDetector.java"

# interfaces
.implements Lcom/android/vcard/VCardInterpreter;


# static fields
.field private static APPLE_SIGNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static FOMA_SIGNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static JAPANESE_MOBILE_PHONE_SIGNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static TYPE_FOMA_CHARSET_SIGN:Ljava/lang/String;

.field private static WINDOWS_MOBILE_PHONE_SIGNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mParseType:I

.field private mSpecifiedCharset:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "X-PHONETIC-FIRST-NAME"

    aput-object v2, v1, v3

    const-string v2, "X-PHONETIC-MIDDLE-NAME"

    aput-object v2, v1, v4

    const-string v2, "X-PHONETIC-LAST-NAME"

    aput-object v2, v1, v5

    const-string v2, "X-ABADR"

    aput-object v2, v1, v6

    const-string v2, "X-ABUID"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardSourceDetector;->APPLE_SIGNS:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "X-GNO"

    aput-object v2, v1, v3

    const-string v2, "X-GN"

    aput-object v2, v1, v4

    const-string v2, "X-REDUCTION"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardSourceDetector;->JAPANESE_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "X-MICROSOFT-ASST_TEL"

    aput-object v2, v1, v3

    const-string v2, "X-MICROSOFT-ASSISTANT"

    aput-object v2, v1, v4

    const-string v2, "X-MICROSOFT-OFFICELOC"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardSourceDetector;->WINDOWS_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "X-SD-VERN"

    aput-object v2, v1, v3

    const-string v2, "X-SD-FORMAT_VER"

    aput-object v2, v1, v4

    const-string v2, "X-SD-CATEGORIES"

    aput-object v2, v1, v5

    const-string v2, "X-SD-CLASS"

    aput-object v2, v1, v6

    const-string v2, "X-SD-DCREATED"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "X-SD-DESCRIPTION"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardSourceDetector;->FOMA_SIGNS:Ljava/util/Set;

    .line 60
    const-string v0, "X-SD-CHAR_CODE"

    sput-object v0, Lcom/android/vcard/VCardSourceDetector;->TYPE_FOMA_CHARSET_SIGN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vcard/VCardSourceDetector;->mVersion:I

    return-void
.end method


# virtual methods
.method public getEstimatedCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/vcard/VCardSourceDetector;->mSpecifiedCharset:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 173
    iget-object v0, p0, Lcom/android/vcard/VCardSourceDetector;->mSpecifiedCharset:Ljava/lang/String;

    .line 183
    :goto_a
    return-object v0

    .line 175
    :cond_b
    iget v0, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    packed-switch v0, :pswitch_data_18

    .line 183
    const/4 v0, 0x0

    goto :goto_a

    .line 179
    :pswitch_12
    const-string v0, "SHIFT_JIS"

    goto :goto_a

    .line 181
    :pswitch_15
    const-string v0, "UTF-8"

    goto :goto_a

    .line 175
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public getEstimatedType()I
    .registers 3

    .prologue
    .line 143
    iget v0, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    packed-switch v0, :pswitch_data_28

    .line 151
    iget v0, p0, Lcom/android/vcard/VCardSourceDetector;->mVersion:I

    if-nez v0, :cond_14

    .line 152
    const/high16 v0, -0x4000

    .line 158
    :goto_b
    return v0

    .line 145
    :pswitch_c
    const v0, 0x38000008

    goto :goto_b

    .line 147
    :pswitch_10
    const v0, 0x18000008

    goto :goto_b

    .line 153
    :cond_14
    iget v0, p0, Lcom/android/vcard/VCardSourceDetector;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 154
    const v0, -0x3fffffff

    goto :goto_b

    .line 155
    :cond_1d
    iget v0, p0, Lcom/android/vcard/VCardSourceDetector;->mVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 156
    const v0, -0x3ffffffe

    goto :goto_b

    .line 158
    :cond_26
    const/4 v0, 0x0

    goto :goto_b

    .line 143
    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method

.method public onEntryEnded()V
    .registers 1

    .prologue
    .line 99
    return-void
.end method

.method public onEntryStarted()V
    .registers 1

    .prologue
    .line 95
    return-void
.end method

.method public onPropertyCreated(Lcom/android/vcard/VCardProperty;)V
    .registers 11
    .parameter "property"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 103
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, propertyName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getValueList()Ljava/util/List;

    move-result-object v1

    .line 106
    .local v1, valueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "VERSION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5e

    .line 108
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    .local v2, versionString:Ljava/lang/String;
    const-string v3, "2.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 110
    iput v4, p0, Lcom/android/vcard/VCardSourceDetector;->mVersion:I

    .line 124
    .end local v2           #versionString:Ljava/lang/String;
    :cond_2a
    :goto_2a
    iget v3, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    if-eqz v3, :cond_77

    .line 136
    :cond_2e
    :goto_2e
    return-void

    .line 111
    .restart local v2       #versionString:Ljava/lang/String;
    :cond_2f
    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 112
    iput v6, p0, Lcom/android/vcard/VCardSourceDetector;->mVersion:I

    goto :goto_2a

    .line 113
    :cond_3a
    const-string v3, "4.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 114
    iput v7, p0, Lcom/android/vcard/VCardSourceDetector;->mVersion:I

    goto :goto_2a

    .line 116
    :cond_45
    const-string v3, "vCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid version string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 118
    .end local v2           #versionString:Ljava/lang/String;
    :cond_5e
    sget-object v3, Lcom/android/vcard/VCardSourceDetector;->TYPE_FOMA_CHARSET_SIGN:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 119
    iput v8, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    .line 120
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2a

    .line 121
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/vcard/VCardSourceDetector;->mSpecifiedCharset:Ljava/lang/String;

    goto :goto_2a

    .line 127
    :cond_77
    sget-object v3, Lcom/android/vcard/VCardSourceDetector;->WINDOWS_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 128
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    goto :goto_2e

    .line 129
    :cond_83
    sget-object v3, Lcom/android/vcard/VCardSourceDetector;->FOMA_SIGNS:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 130
    iput v8, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    goto :goto_2e

    .line 131
    :cond_8e
    sget-object v3, Lcom/android/vcard/VCardSourceDetector;->JAPANESE_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 132
    iput v7, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    goto :goto_2e

    .line 133
    :cond_99
    sget-object v3, Lcom/android/vcard/VCardSourceDetector;->APPLE_SIGNS:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 134
    iput v6, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    goto :goto_2e
.end method

.method public onVCardEnded()V
    .registers 1

    .prologue
    .line 91
    return-void
.end method

.method public onVCardStarted()V
    .registers 1

    .prologue
    .line 87
    return-void
.end method
