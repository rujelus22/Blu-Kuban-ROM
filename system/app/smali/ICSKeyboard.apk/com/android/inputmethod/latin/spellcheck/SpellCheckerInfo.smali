.class public final Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;
.super Ljava/lang/Object;
.source "SpellCheckerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mLabel:I

.field private final mService:Landroid/content/pm/ResolveInfo;

.field private final mSettingsActivityName:Ljava/lang/String;

.field private final mSubtypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/spellcheck/SpellCheckerSubtype;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->TAG:Ljava/lang/String;

    .line 190
    new-instance v0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo$1;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo$1;-><init>()V

    .line 189
    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 20
    .parameter "context"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    .line 66
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 67
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 68
    .local v11, si:Landroid/content/pm/ServiceInfo;
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mId:Ljava/lang/String;

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 71
    .local v8, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 72
    .local v5, label:I
    const/4 v10, 0x0

    .line 74
    .local v10, settingsActivityComponent:Ljava/lang/String;
    const/4 v7, 0x0

    .line 76
    .local v7, parser:Landroid/content/res/XmlResourceParser;
    :try_start_30
    const-string v14, "ics"

    invoke-virtual {v11, v8, v14}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 77
    if-nez v7, :cond_75

    .line 78
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v15, "No ics meta-data"

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_40} :catch_40

    .line 124
    :catch_40
    move-exception v4

    .line 125
    .local v4, e:Ljava/lang/Exception;
    :try_start_41
    sget-object v14, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Caught exception: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    .line 127
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Unable to create context for: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 126
    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_6e
    .catchall {:try_start_41 .. :try_end_6e} :catchall_6e

    .line 128
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_6e
    move-exception v14

    .line 129
    if-eqz v7, :cond_74

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 130
    :cond_74
    throw v14

    .line 82
    :cond_75
    :try_start_75
    iget-object v14, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 83
    .local v9, res:Landroid/content/res/Resources;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 85
    .local v2, attrs:Landroid/util/AttributeSet;
    :cond_7f
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, type:I
    const/4 v14, 0x1

    if-eq v13, v14, :cond_89

    .line 86
    const/4 v14, 0x2

    if-ne v13, v14, :cond_7f

    .line 89
    :cond_89
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, nodeName:Ljava/lang/String;
    const-string v14, "spell-checker"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9d

    .line 91
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    .line 92
    const-string v15, "Meta-data does not start with spell-checker tag"

    .line 91
    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 102
    :cond_9d
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 104
    .local v3, depth:I
    :cond_a1
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_ae

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I
    :try_end_ab
    .catchall {:try_start_75 .. :try_end_ab} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_ab} :catch_40

    move-result v14

    if-le v14, v3, :cond_b1

    .line 105
    :cond_ae
    const/4 v14, 0x1

    if-ne v13, v14, :cond_bf

    .line 129
    :cond_b1
    if-eqz v7, :cond_b6

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 131
    :cond_b6
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mLabel:I

    .line 132
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 133
    return-void

    .line 106
    :cond_bf
    const/4 v14, 0x2

    if-ne v13, v14, :cond_a1

    .line 107
    :try_start_c2
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 108
    .local v12, subtypeNodeName:Ljava/lang/String;
    const-string v14, "subtype"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a1

    .line 109
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    .line 110
    const-string v15, "Meta-data in spell-checker does not start with subtype tag"

    .line 109
    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_d6
    .catchall {:try_start_c2 .. :try_end_d6} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_d6} :catch_40
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "source"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mLabel:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mId:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 143
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 144
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 145
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 4

    .prologue
    .line 160
    new-instance v0, Landroid/content/ComponentName;

    .line 161
    iget-object v1, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 160
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtypeAt(I)Lcom/android/inputmethod/latin/spellcheck/SpellCheckerSubtype;
    .registers 3
    .parameter "index"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerSubtype;

    return-object v0
.end method

.method public getSubtypeCount()I
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "pm"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "pm"

    .prologue
    .line 208
    iget v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mLabel:I

    if-eqz v0, :cond_6

    if-nez p1, :cond_9

    :cond_6
    const-string v0, ""

    .line 209
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mLabel:I

    iget-object v2, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 178
    iget v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 182
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 183
    return-void
.end method
