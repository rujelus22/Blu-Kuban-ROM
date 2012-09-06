.class public final Lcom/anddoes/launcher/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/anddoes/launcher/t;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/anddoes/launcher/preference/h;

.field private d:Ljava/lang/Process;

.field private e:Ljava/io/DataOutputStream;

.field private f:Ljava/io/DataInputStream;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/anddoes/launcher/t;->b:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/anddoes/launcher/preference/h;

    invoke-direct {v0, p1}, Lcom/anddoes/launcher/preference/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/t;->c:Lcom/anddoes/launcher/preference/h;

    .line 37
    return-void
.end method

.method protected static declared-synchronized a(Landroid/content/Context;)Lcom/anddoes/launcher/t;
    .registers 3
    .parameter

    .prologue
    .line 41
    const-class v1, Lcom/anddoes/launcher/t;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/anddoes/launcher/t;->a:Lcom/anddoes/launcher/t;

    if-nez v0, :cond_e

    .line 42
    new-instance v0, Lcom/anddoes/launcher/t;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/t;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anddoes/launcher/t;->a:Lcom/anddoes/launcher/t;

    .line 44
    :cond_e
    sget-object v0, Lcom/anddoes/launcher/t;->a:Lcom/anddoes/launcher/t;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 168
    const-string v1, ""

    .line 169
    const/4 v0, 0x0

    :goto_3
    array-length v2, p0

    if-lt v0, v2, :cond_7

    .line 176
    return-object v1

    .line 170
    :cond_7
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_25

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private a(Landroid/os/Parcel;I)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 77
    :try_start_2
    iget-object v2, p0, Lcom/anddoes/launcher/t;->d:Ljava/lang/Process;

    if-nez v2, :cond_2c

    .line 78
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    iput-object v2, p0, Lcom/anddoes/launcher/t;->d:Ljava/lang/Process;

    .line 79
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/anddoes/launcher/t;->d:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/anddoes/launcher/t;->e:Ljava/io/DataOutputStream;

    .line 80
    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/anddoes/launcher/t;->d:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/anddoes/launcher/t;->f:Ljava/io/DataInputStream;

    .line 83
    :cond_2c
    iget-object v2, p0, Lcom/anddoes/launcher/t;->e:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/anddoes/launcher/t;->f:Ljava/io/DataInputStream;

    if-nez v2, :cond_35

    .line 118
    :cond_34
    :goto_34
    return v0

    .line 87
    :cond_35
    iget-object v2, p0, Lcom/anddoes/launcher/t;->e:Ljava/io/DataOutputStream;

    const-string v3, "id\n"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/anddoes/launcher/t;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 90
    iget-object v2, p0, Lcom/anddoes/launcher/t;->f:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_34

    .line 94
    const-string v3, "uid=0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 95
    iget-object v1, p0, Lcom/anddoes/launcher/t;->e:Ljava/io/DataOutputStream;

    const-string v2, "exit\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/anddoes/launcher/t;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5d} :catch_5e

    goto :goto_34

    .line 114
    :catch_5e
    move-exception v1

    .line 115
    const-string v2, "Launcher.AppWidgetBinder"

    const-string v3, "Error running native widget binder"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 100
    :cond_67
    :try_start_67
    iget-object v2, p0, Lcom/anddoes/launcher/t;->e:Ljava/io/DataOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cd "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anddoes/launcher/t;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/anddoes/launcher/t;->e:Ljava/io/DataOutputStream;

    const-string v3, "chmod 0755 RootHelper\n"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/anddoes/launcher/t;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 104
    const-string v2, "./%s %s %d %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "RootHelper"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 105
    const-string v5, "appwidget"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-static {v5}, Lcom/anddoes/launcher/t;->a([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 104
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/anddoes/launcher/t;->e:Ljava/io/DataOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/anddoes/launcher/t;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 110
    iget-object v2, p0, Lcom/anddoes/launcher/t;->e:Ljava/io/DataOutputStream;

    const-string v3, "id\n"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/anddoes/launcher/t;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 112
    iget-object v2, p0, Lcom/anddoes/launcher/t;->f:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_e2} :catch_5e

    move v0, v1

    .line 118
    goto/16 :goto_34
.end method


# virtual methods
.method protected final a()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    iget-object v2, p0, Lcom/anddoes/launcher/t;->c:Lcom/anddoes/launcher/preference/h;

    const-string v4, "root_helper_version"

    invoke-virtual {v2, v4, v1}, Lcom/anddoes/launcher/preference/h;->a(Ljava/lang/String;I)I

    move-result v2

    .line 124
    :try_start_b
    iget-object v4, p0, Lcom/anddoes/launcher/t;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 125
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/anddoes/launcher/t;->g:Ljava/lang/String;

    .line 126
    new-instance v5, Ljava/io/File;

    const-string v6, "RootHelper"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    if-ne v2, v0, :cond_27

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 164
    :goto_26
    return v0

    .line 130
    :cond_27
    iget-object v2, p0, Lcom/anddoes/launcher/t;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2c} :catch_78

    move-result-object v2

    .line 134
    :try_start_2d
    const-string v4, "RootHelper"

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_6a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_8c

    move-result-object v4

    .line 135
    :try_start_33
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_87
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_8f

    .line 136
    const/16 v3, 0x400

    :try_start_3a
    new-array v3, v3, [B

    .line 138
    :goto_3c
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_56

    .line 141
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_8a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_46} :catch_5b

    .line 145
    if-eqz v4, :cond_4b

    .line 147
    :try_start_48
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_83

    .line 150
    :cond_4b
    :goto_4b
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_85

    .line 163
    :goto_4e
    iget-object v1, p0, Lcom/anddoes/launcher/t;->c:Lcom/anddoes/launcher/preference/h;

    const-string v2, "root_helper_version"

    invoke-virtual {v1, v2, v0}, Lcom/anddoes/launcher/preference/h;->b(Ljava/lang/String;I)V

    goto :goto_26

    .line 139
    :cond_56
    const/4 v6, 0x0

    :try_start_57
    invoke-virtual {v2, v3, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_8a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_3c

    :catch_5b
    move-exception v0

    move-object v0, v2

    move-object v3, v4

    .line 145
    :goto_5e
    if-eqz v3, :cond_63

    .line 147
    :try_start_60
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_7b

    .line 150
    :cond_63
    :goto_63
    if-eqz v0, :cond_68

    .line 154
    :try_start_65
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_7d

    :cond_68
    :goto_68
    move v0, v1

    .line 157
    goto :goto_26

    .line 144
    :catchall_6a
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    .line 145
    :goto_6d
    if-eqz v4, :cond_72

    .line 147
    :try_start_6f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_7f

    .line 150
    :cond_72
    :goto_72
    if-eqz v2, :cond_77

    .line 154
    :try_start_74
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_81

    .line 157
    :cond_77
    :goto_77
    :try_start_77
    throw v0
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_78} :catch_78

    .line 161
    :catch_78
    move-exception v0

    move v0, v1

    goto :goto_26

    :catch_7b
    move-exception v2

    goto :goto_63

    :catch_7d
    move-exception v0

    goto :goto_68

    :catch_7f
    move-exception v3

    goto :goto_72

    :catch_81
    move-exception v2

    goto :goto_77

    :catch_83
    move-exception v1

    goto :goto_4b

    :catch_85
    move-exception v1

    goto :goto_4e

    .line 144
    :catchall_87
    move-exception v0

    move-object v2, v3

    goto :goto_6d

    :catchall_8a
    move-exception v0

    goto :goto_6d

    :catch_8c
    move-exception v0

    move-object v0, v3

    goto :goto_5e

    :catch_8f
    move-exception v0

    move-object v0, v3

    move-object v3, v4

    goto :goto_5e
.end method

.method protected final declared-synchronized a(ILandroid/content/ComponentName;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    monitor-enter p0

    :try_start_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4a

    move-result-object v2

    .line 50
    :try_start_7
    const-string v3, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    if-eqz p2, :cond_40

    .line 53
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    :goto_19
    const-string v3, "com.android.internal.appwidget.IAppWidgetService$Stub"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 60
    const-string v4, "TRANSACTION_bindAppWidgetId"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 61
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 63
    invoke-direct {p0, v2, v3}, Lcom/anddoes/launcher/t;->a(Landroid/os/Parcel;I)Z
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_4d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_38} :catch_45

    move-result v3

    if-nez v3, :cond_52

    .line 69
    :try_start_3b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4a

    .line 71
    :goto_3e
    monitor-exit p0

    return v0

    .line 56
    :cond_40
    const/4 v3, 0x0

    :try_start_41
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_19

    .line 69
    :catch_45
    move-exception v1

    :try_start_46
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_3e

    .line 48
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 68
    :catchall_4d
    move-exception v0

    .line 69
    :try_start_4e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 70
    throw v0

    .line 69
    :cond_52
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_4a

    move v0, v1

    .line 71
    goto :goto_3e
.end method
