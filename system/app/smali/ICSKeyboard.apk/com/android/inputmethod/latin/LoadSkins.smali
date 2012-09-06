.class public Lcom/android/inputmethod/latin/LoadSkins;
.super Ljava/lang/Object;
.source "LoadSkins.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LoadSkins$SkinData;,
        Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;
    }
.end annotation


# static fields
.field public static final RECEIVER_INTERFACE:Ljava/lang/String; = "com.betterandroid.betterkeyboard.skins"

.field private static final TAG:Ljava/lang/String; = "SkinLoader"

.field private static skin_creators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAllBuilders(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    const-class v2, Lcom/android/inputmethod/latin/LoadSkins;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/inputmethod/latin/LoadSkins;->skin_creators:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, skins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;>;"
    invoke-static {p0}, Lcom/android/inputmethod/latin/LoadSkins;->getAllSkins(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 208
    sput-object v0, Lcom/android/inputmethod/latin/LoadSkins;->skin_creators:Ljava/util/ArrayList;

    .line 211
    .end local v0           #skins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;>;"
    :cond_15
    sget-object v1, Lcom/android/inputmethod/latin/LoadSkins;->skin_creators:Ljava/util/ArrayList;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v2

    return-object v1

    .line 201
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getAllSkins(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 14
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.betterandroid.betterkeyboard.skins"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v8, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v8, :cond_2c

    .line 112
    const-string v8, "SkinLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Number of potential external themes packages found: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 112
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v3, externalSkins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_35
    :goto_35
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_58

    .line 157
    sget-boolean v8, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v8, :cond_57

    .line 158
    const-string v8, "SkinLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Number of external dictionary builders successfully parsed: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 158
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_57
    return-object v3

    .line 119
    :cond_58
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 121
    .local v5, receiver:Landroid/content/pm/ResolveInfo;
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v9, :cond_7f

    .line 122
    const-string v9, "SkinLoader"

    .line 123
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "BroadcastReceiver has null ActivityInfo. Receiver\'s label is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 123
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 122
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 132
    :cond_7f
    :try_start_7f
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    .line 131
    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 133
    .local v2, externalPackageContext:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "newformat2"

    const-string v11, "bool"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 134
    .local v6, resid:I
    if-eqz v6, :cond_a4

    .line 136
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 137
    .local v4, newFormat:Z
    if-nez v4, :cond_35

    .line 142
    .end local v4           #newFormat:Z
    :cond_a4
    new-instance v7, Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;

    invoke-direct {v7}, Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;-><init>()V

    .line 143
    .local v7, skininfo:Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;
    #setter for: Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;->mPackageContext:Landroid/content/Context;
    invoke-static {v7, v2}, Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;->access$0(Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;Landroid/content/Context;)V

    .line 144
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-eqz v9, :cond_c1

    .line 146
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;->mDescription:Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;->access$1(Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;Ljava/lang/String;)V

    .line 148
    :cond_c1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7f .. :try_end_c4} :catch_c6

    goto/16 :goto_35

    .line 152
    .end local v2           #externalPackageContext:Landroid/content/Context;
    .end local v6           #resid:I
    .end local v7           #skininfo:Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;
    :catch_c6
    move-exception v1

    .line 153
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "SkinLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Did not find package: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35
.end method

.method private static declared-synchronized getSkinByActivityInfo(Landroid/content/Context;)Lcom/android/inputmethod/latin/LoadSkins$SkinData;
    .registers 8
    .parameter "context"

    .prologue
    .line 57
    const-class v3, Lcom/android/inputmethod/latin/LoadSkins;

    monitor-enter v3

    :try_start_3
    new-instance v1, Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    invoke-direct {v1}, Lcom/android/inputmethod/latin/LoadSkins$SkinData;-><init>()V

    .line 58
    .local v1, skin:Lcom/android/inputmethod/latin/LoadSkins$SkinData;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "btn_keyboard_key"

    const-string v5, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, resid:I
    if-eqz v0, :cond_24

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->btn_keyboard_key:Landroid/graphics/drawable/Drawable;

    .line 64
    :cond_24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "btn_keyboard_key_alt"

    const-string v5, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 65
    if-eqz v0, :cond_40

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->btn_keyboard_key_alt:Landroid/graphics/drawable/Drawable;

    .line 70
    :cond_40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "keyboard_key_feedback"

    const-string v5, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 71
    if-eqz v0, :cond_5c

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->keyboard_key_feedback:Landroid/graphics/drawable/Drawable;

    .line 75
    :cond_5c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "keyboard_background"

    const-string v5, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 76
    if-eqz v0, :cond_78

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->keyboard_background:Landroid/graphics/drawable/Drawable;

    .line 80
    :cond_78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "text_color"

    const-string v5, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 81
    if-eqz v0, :cond_94

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->text_color:I

    .line 85
    :cond_94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "shadow_color"

    const-string v5, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 86
    if-eqz v0, :cond_b0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->shadow_color:I

    .line 90
    :cond_b0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "text_color2"

    const-string v5, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 91
    if-eqz v0, :cond_cc

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->text_color2:I

    .line 95
    :cond_cc
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "shadow_color2"

    const-string v5, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 96
    if-eqz v0, :cond_e8

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/android/inputmethod/latin/LoadSkins$SkinData;->shadow_color2:I
    :try_end_e8
    .catchall {:try_start_3 .. :try_end_e8} :catchall_ea

    .line 102
    :cond_e8
    monitor-exit v3

    return-object v1

    .line 57
    .end local v0           #resid:I
    .end local v1           #skin:Lcom/android/inputmethod/latin/LoadSkins$SkinData;
    :catchall_ea
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getSkinDataByName(Ljava/lang/String;)Lcom/android/inputmethod/latin/LoadSkins$SkinData;
    .registers 5
    .parameter "skinName"

    .prologue
    .line 168
    sget-object v3, Lcom/android/inputmethod/latin/LoadSkins;->skin_creators:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    .line 170
    sget-object v3, Lcom/android/inputmethod/latin/LoadSkins;->skin_creators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 172
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-lt v0, v1, :cond_f

    .line 181
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_d
    const/4 v3, 0x0

    :goto_e
    return-object v3

    .line 174
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_f
    sget-object v3, Lcom/android/inputmethod/latin/LoadSkins;->skin_creators:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;

    .line 175
    .local v2, skininfo:Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;->getSkinName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 177
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;->getPackageContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/inputmethod/latin/LoadSkins;->getSkinByActivityInfo(Landroid/content/Context;)Lcom/android/inputmethod/latin/LoadSkins$SkinData;

    move-result-object v3

    goto :goto_e

    .line 172
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public static getSkinsNames()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v2, skins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/inputmethod/latin/LoadSkins;->skin_creators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 187
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-lt v0, v1, :cond_f

    .line 192
    return-object v2

    .line 189
    :cond_f
    sget-object v3, Lcom/android/inputmethod/latin/LoadSkins;->skin_creators:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;

    #getter for: Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;->mDescription:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;->access$2(Lcom/android/inputmethod/latin/LoadSkins$SkinInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public static declared-synchronized resetBuildersCache()V
    .registers 2

    .prologue
    .line 196
    const-class v0, Lcom/android/inputmethod/latin/LoadSkins;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/android/inputmethod/latin/LoadSkins;->skin_creators:Ljava/util/ArrayList;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 197
    monitor-exit v0

    return-void

    .line 196
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method
