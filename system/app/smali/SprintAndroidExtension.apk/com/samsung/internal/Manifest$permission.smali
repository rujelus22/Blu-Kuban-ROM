.class public final Lcom/samsung/internal/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/internal/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final CONNECTIONMANAGER:Ljava/lang/String; = "com.sprint.internal.permission.CONNECTIONMANAGER"

.field public static final DIAGNOSTICS:Ljava/lang/String; = "com.sprint.internal.permission.DIAGNOSTICS"

.field public static final OMADM:Ljava/lang/String; = "com.sprint.internal.permission.OMADM"

.field public static final PLATFORM:Ljava/lang/String; = "com.sprint.internal.permission.PLATFORM"

.field public static final SYSTEMPROPERTIES:Ljava/lang/String; = "com.sprint.internal.permission.SYSTEMPROPERTIES"

.field public static final SYSTEMPROPERTIES_WRITE:Ljava/lang/String; = "com.sprint.internal.permission.SYSTEMPROPERTIES_WRITE"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
