.class public Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
.super Ljava/lang/Object;
.source "ContactDirectoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactDirectoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DirectoryInfo"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field accountType:Ljava/lang/String;

.field authority:Ljava/lang/String;

.field displayName:Ljava/lang/String;

.field exportSupport:I

.field id:J

.field packageName:Ljava/lang/String;

.field photoSupport:I

.field shortcutSupport:I

.field final synthetic this$0:Lcom/android/providers/contacts/ContactDirectoryManager;

.field typeResourceId:I


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactDirectoryManager;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 55
    iput-object p1, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->this$0:Lcom/android/providers/contacts/ContactDirectoryManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->exportSupport:I

    .line 64
    iput v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->shortcutSupport:I

    .line 65
    iput v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->photoSupport:I

    return-void
.end method
