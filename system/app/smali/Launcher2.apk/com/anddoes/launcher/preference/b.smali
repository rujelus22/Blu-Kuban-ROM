.class public final Lcom/anddoes/launcher/preference/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Ljava/io/File;

.field private static d:Ljava/io/File;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p2, p0, Lcom/anddoes/launcher/preference/b;->b:Z

    .line 44
    iput-object p1, p0, Lcom/anddoes/launcher/preference/b;->a:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/anddoes/launcher/preference/b;->c:Ljava/io/File;

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/Android/data/apexlauncher/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/anddoes/launcher/preference/b;->d:Ljava/io/File;

    .line 47
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/shared_prefs/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".bak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 51
    .line 52
    sget-object v0, Lcom/anddoes/launcher/preference/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    .line 54
    sget-object v0, Lcom/anddoes/launcher/preference/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 56
    :cond_f
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/anddoes/launcher/preference/b;->c:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/anddoes/launcher/preference/b;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_preferences"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/anddoes/launcher/preference/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/anddoes/launcher/preference/b;->d:Ljava/io/File;

    const-string v5, "apex_settings"

    invoke-static {v5}, Lcom/anddoes/launcher/preference/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 59
    invoke-static {v0, v3}, Lcom/anddoes/launcher/ia;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 61
    :goto_4a
    iget-boolean v3, p0, Lcom/anddoes/launcher/preference/b;->b:Z

    if-eqz v3, :cond_a0

    .line 62
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/anddoes/launcher/preference/b;->c:Ljava/io/File;

    const-string v5, "DrawerGroups"

    invoke-static {v5}, Lcom/anddoes/launcher/preference/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 64
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/anddoes/launcher/preference/b;->d:Ljava/io/File;

    const-string v6, "DrawerGroups"

    invoke-static {v6}, Lcom/anddoes/launcher/preference/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    if-eqz v0, :cond_a1

    invoke-static {v3, v4}, Lcom/anddoes/launcher/ia;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a1

    move v0, v1

    .line 67
    :cond_77
    :goto_77
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/anddoes/launcher/preference/b;->c:Ljava/io/File;

    const-string v5, "SwipeActions"

    invoke-static {v5}, Lcom/anddoes/launcher/preference/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 69
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/anddoes/launcher/preference/b;->d:Ljava/io/File;

    const-string v6, "SwipeActions"

    invoke-static {v6}, Lcom/anddoes/launcher/preference/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    if-eqz v0, :cond_a3

    invoke-static {v3, v4}, Lcom/anddoes/launcher/ia;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a3

    :goto_9f
    move v0, v1

    .line 73
    :cond_a0
    return v0

    :cond_a1
    move v0, v2

    .line 65
    goto :goto_77

    :cond_a3
    move v1, v2

    .line 70
    goto :goto_9f

    :cond_a5
    move v0, v1

    goto :goto_4a
.end method

.method public final b()Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 77
    .line 78
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/anddoes/launcher/preference/b;->c:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/anddoes/launcher/preference/b;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_preferences"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/anddoes/launcher/preference/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/anddoes/launcher/preference/b;->d:Ljava/io/File;

    const-string v5, "apex_settings"

    invoke-static {v5}, Lcom/anddoes/launcher/preference/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_98

    .line 81
    invoke-static {v3, v0}, Lcom/anddoes/launcher/ia;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 83
    :goto_3d
    iget-boolean v3, p0, Lcom/anddoes/launcher/preference/b;->b:Z

    if-eqz v3, :cond_93

    .line 84
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/anddoes/launcher/preference/b;->d:Ljava/io/File;

    const-string v5, "DrawerGroups"

    invoke-static {v5}, Lcom/anddoes/launcher/preference/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 86
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/anddoes/launcher/preference/b;->c:Ljava/io/File;

    const-string v6, "DrawerGroups"

    invoke-static {v6}, Lcom/anddoes/launcher/preference/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    if-eqz v0, :cond_94

    invoke-static {v3, v4}, Lcom/anddoes/launcher/ia;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_94

    move v0, v1

    .line 89
    :cond_6a
    :goto_6a
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/anddoes/launcher/preference/b;->d:Ljava/io/File;

    const-string v5, "SwipeActions"

    invoke-static {v5}, Lcom/anddoes/launcher/preference/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 91
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/anddoes/launcher/preference/b;->c:Ljava/io/File;

    const-string v6, "SwipeActions"

    invoke-static {v6}, Lcom/anddoes/launcher/preference/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    if-eqz v0, :cond_96

    invoke-static {v3, v4}, Lcom/anddoes/launcher/ia;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_96

    :goto_92
    move v0, v1

    .line 95
    :cond_93
    return v0

    :cond_94
    move v0, v2

    .line 87
    goto :goto_6a

    :cond_96
    move v1, v2

    .line 92
    goto :goto_92

    :cond_98
    move v0, v1

    goto :goto_3d
.end method

.method public final c()V
    .registers 5

    .prologue
    .line 99
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/anddoes/launcher/preference/b;->c:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/anddoes/launcher/preference/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anddoes/launcher/preference/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 104
    :cond_2d
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/anddoes/launcher/preference/b;->c:Ljava/io/File;

    const-string v2, "DrawerGroups"

    invoke-static {v2}, Lcom/anddoes/launcher/preference/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 109
    :cond_43
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/anddoes/launcher/preference/b;->c:Ljava/io/File;

    const-string v2, "SwipeActions"

    invoke-static {v2}, Lcom/anddoes/launcher/preference/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 114
    :cond_59
    return-void
.end method

.method public final d()Z
    .registers 5

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    new-instance v2, Ljava/io/File;

    sget-object v0, Lcom/anddoes/launcher/preference/b;->d:Ljava/io/File;

    const-string v3, "apex_data"

    invoke-static {v3}, Lcom/anddoes/launcher/preference/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/anddoes/launcher/preference/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 130
    sget-object v0, Lcom/anddoes/launcher/preference/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 132
    :cond_1b
    iget-object v0, p0, Lcom/anddoes/launcher/preference/b;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_36

    .line 133
    iget-object v0, p0, Lcom/anddoes/launcher/preference/b;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 134
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherApplication;->c()Lcom/anddoes/launcher/LauncherProvider;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_36

    .line 136
    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/LauncherProvider;->a(Ljava/io/File;)Z

    move-result v0

    .line 139
    :goto_35
    return v0

    :cond_36
    move v0, v1

    goto :goto_35
.end method

.method public final e()Z
    .registers 5

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 144
    new-instance v2, Ljava/io/File;

    sget-object v0, Lcom/anddoes/launcher/preference/b;->d:Ljava/io/File;

    const-string v3, "apex_data"

    invoke-static {v3}, Lcom/anddoes/launcher/preference/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/anddoes/launcher/preference/b;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_29

    .line 146
    iget-object v0, p0, Lcom/anddoes/launcher/preference/b;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 147
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/anddoes/launcher/LauncherApplication;->c()Lcom/anddoes/launcher/LauncherProvider;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_29

    .line 149
    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/LauncherProvider;->b(Ljava/io/File;)Z

    move-result v0

    .line 152
    :goto_28
    return v0

    :cond_29
    move v0, v1

    goto :goto_28
.end method
