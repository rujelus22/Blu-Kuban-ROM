.class public final Lcom/coremobility/integration/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/bluetooth/BluetoothHeadset;

.field private b:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private c:I

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Method;

.field private h:Ljava/lang/reflect/Method;

.field private i:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 13

    const/4 v11, 0x2

    const/16 v10, 0x17

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    iput-object v0, p0, Lcom/coremobility/integration/b;->b:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iput v2, p0, Lcom/coremobility/integration/b;->c:I

    iput-object v0, p0, Lcom/coremobility/integration/b;->d:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/coremobility/integration/b;->e:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/coremobility/integration/b;->f:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/coremobility/integration/b;->g:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/coremobility/integration/b;->h:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/coremobility/integration/b;->i:Ljava/lang/reflect/Method;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_3f

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/integration/b;->c:I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3e

    new-instance v2, Lcom/coremobility/integration/c;

    invoke-direct {v2, p0}, Lcom/coremobility/integration/c;-><init>(Lcom/coremobility/integration/b;)V

    iput-object v2, p0, Lcom/coremobility/integration/b;->b:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/integration/b;->b:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v2, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    :try_start_3f
    const-string v3, "android.bluetooth.BluetoothHeadset"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v3, "android.bluetooth.BluetoothHeadset.ServiceListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v3, "android.bluetooth.BluetoothDevice"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_50
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3f .. :try_end_50} :catch_164
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3f .. :try_end_50} :catch_169
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_50} :catch_16e

    move-result-object v3

    :try_start_51
    const-class v0, Landroid/bluetooth/BluetoothHeadset;

    const-string v6, "startVoiceOutput"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/b;->g:Ljava/lang/reflect/Method;

    const-class v0, Landroid/bluetooth/BluetoothHeadset;

    const-string v6, "stopVoiceOutput"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/b;->h:Ljava/lang/reflect/Method;

    const-class v0, Landroid/bluetooth/BluetoothHeadset;

    const-string v6, "close"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/b;->i:Ljava/lang/reflect/Method;

    const-class v0, Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const-string v6, "onServiceConnected"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-class v0, Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const-string v7, "onServiceDisconnected"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1ac

    const-string v8, "android.permission.BLUETOOTH"

    const-string v9, "com.coremobility.app.vnotes"

    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1ac

    move v0, v1

    :goto_a7
    if-eqz v4, :cond_bd

    if-eqz v5, :cond_bd

    iget-object v4, p0, Lcom/coremobility/integration/b;->g:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_bd

    iget-object v4, p0, Lcom/coremobility/integration/b;->h:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_bd

    iget-object v4, p0, Lcom/coremobility/integration/b;->i:Ljava/lang/reflect/Method;
    :try_end_b5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_51 .. :try_end_b5} :catch_1a6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_51 .. :try_end_b5} :catch_1a4
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_b5} :catch_1a2

    if-eqz v4, :cond_bd

    if-eqz v6, :cond_bd

    if-eqz v7, :cond_bd

    if-nez v0, :cond_1a9

    :cond_bd
    move v0, v2

    :goto_be
    if-eqz v0, :cond_3e

    :try_start_c0
    const-class v0, Landroid/bluetooth/BluetoothHeadset;

    const-string v4, "getState"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/b;->e:Ljava/lang/reflect/Method;

    const-class v0, Landroid/bluetooth/BluetoothHeadset;

    const-string v3, "getCurrentHeadset"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/b;->f:Ljava/lang/reflect/Method;

    const/4 v0, 0x2

    iput v0, p0, Lcom/coremobility/integration/b;->c:I

    const/16 v0, 0x17

    const-string v3, "CM_BluetoothHeadset::getState::getCurrentHeadset available for GB "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_ea} :catch_173

    :goto_ea
    iget v0, p0, Lcom/coremobility/integration/b;->c:I

    if-eq v0, v11, :cond_108

    :try_start_ee
    const-class v0, Landroid/bluetooth/BluetoothHeadset;

    const-string v3, "getState"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/b;->d:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/integration/b;->c:I

    const/16 v0, 0x17

    const-string v3, "CM_BluetoothHeadset::getState:: available for FROYO"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_108} :catch_17d

    :cond_108
    :goto_108
    iget v0, p0, Lcom/coremobility/integration/b;->c:I

    if-eq v0, v1, :cond_110

    iget v0, p0, Lcom/coremobility/integration/b;->c:I

    if-ne v0, v11, :cond_186

    :cond_110
    const/4 v0, 0x2

    :try_start_111
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v3, "android.bluetooth.BluetoothHeadset.ServiceListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "android.bluetooth.BluetoothHeadset"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadset;

    iput-object v0, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_145} :catch_147

    goto/16 :goto_3e

    :catch_147
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CM_BluetoothHeadset failed for type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3e

    :catch_164
    move-exception v3

    :goto_165
    move-object v3, v0

    move v0, v2

    goto/16 :goto_be

    :catch_169
    move-exception v3

    move-object v3, v0

    :goto_16b
    move v0, v2

    goto/16 :goto_be

    :catch_16e
    move-exception v3

    move-object v3, v0

    :goto_170
    move v0, v2

    goto/16 :goto_be

    :catch_173
    move-exception v0

    const-string v0, "CM_BluetoothHeadset::getState failed to find for GB"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_ea

    :catch_17d
    move-exception v0

    const-string v0, "CM_BluetoothHeadset::getState failed to find for FROYO"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_108

    :cond_186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CM_BluetoothHeadset failed for type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3e

    :catch_1a2
    move-exception v0

    goto :goto_170

    :catch_1a4
    move-exception v0

    goto :goto_16b

    :catch_1a6
    move-exception v0

    move-object v0, v3

    goto :goto_165

    :cond_1a9
    move v0, v1

    goto/16 :goto_be

    :cond_1ac
    move v0, v2

    goto/16 :goto_a7
.end method

.method static synthetic a(Lcom/coremobility/integration/b;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2

    iput-object p1, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method private f()I
    .registers 9

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/16 v7, 0x17

    const/4 v6, 0x0

    const/4 v1, -0x1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_1e

    iget-object v2, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b6

    :goto_1c
    move v1, v0

    :cond_1d
    :goto_1d
    return v1

    :cond_1e
    iget-object v2, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_1d

    iget v2, p0, Lcom/coremobility/integration/b;->c:I

    if-ne v2, v0, :cond_76

    iget-object v0, p0, Lcom/coremobility/integration/b;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_76

    :try_start_2a
    iget-object v0, p0, Lcom/coremobility/integration/b;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/coremobility/integration/b;->f:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1d

    iget-object v2, p0, Lcom/coremobility/integration/b;->e:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v0, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_6c} :catch_6d

    goto :goto_1d

    :catch_6d
    move-exception v0

    const-string v0, "getBluetoothState falied to execute"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    :cond_76
    iget v0, p0, Lcom/coremobility/integration/b;->c:I

    if-ne v0, v4, :cond_1d

    iget-object v0, p0, Lcom/coremobility/integration/b;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1d

    :try_start_7e
    iget-object v0, p0, Lcom/coremobility/integration/b;->d:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v0, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_aa} :catch_ac

    goto/16 :goto_1d

    :catch_ac
    move-exception v0

    const-string v0, "getBluetoothState falied to execute"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_b6
    move v0, v1

    goto/16 :goto_1c
.end method


# virtual methods
.method public final a()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Lcom/coremobility/integration/b;->f()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/coremobility/integration/b;->c:I

    return v0
.end method

.method public final c()V
    .registers 6

    const/16 v4, 0x17

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_21

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_20

    const-string v0, "CM_BluetoothHeadset::startVoiceOutput"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/b;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_44

    :try_start_30
    iget-object v0, p0, Lcom/coremobility/integration/b;->g:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3a} :catch_3b

    goto :goto_20

    :catch_3b
    move-exception v0

    const-string v0, "StartVoiceOutput falied to execute"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20

    :cond_44
    const-string v0, "StartVoiceOutput not supported"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20
.end method

.method public final d()V
    .registers 6

    const/16 v4, 0x17

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_20

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1f

    const-string v0, "CM_BluetoothHeadset::stopVoiceOutput"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/b;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_43

    :try_start_2f
    iget-object v0, p0, Lcom/coremobility/integration/b;->h:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_39} :catch_3a

    goto :goto_1f

    :catch_3a
    move-exception v0

    const-string v0, "StopVoiceOutput falied to execute"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f

    :cond_43
    const-string v0, "StopVoiceOutput not supported"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f
.end method

.method public final e()V
    .registers 6

    const/16 v4, 0x17

    const/4 v3, 0x0

    const-string v0, "CM_BluetoothHeadset::close"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_22

    iget-object v0, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_21

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/coremobility/integration/b;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3e

    :try_start_2a
    iget-object v0, p0, Lcom/coremobility/integration/b;->i:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_35

    goto :goto_21

    :catch_35
    move-exception v0

    const-string v0, "Close falied to execute"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21

    :cond_3e
    const-string v0, "Close not supported"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21
.end method
