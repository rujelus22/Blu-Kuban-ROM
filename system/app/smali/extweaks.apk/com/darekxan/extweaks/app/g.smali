.class final Lcom/darekxan/extweaks/app/g;
.super Ljava/lang/Object;
.source "ExTweaksProfileManagementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/darekxan/extweaks/app/f;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/darekxan/extweaks/app/f;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/darekxan/extweaks/app/g;->a:Lcom/darekxan/extweaks/app/f;

    iput-object p2, p0, Lcom/darekxan/extweaks/app/g;->b:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/darekxan/extweaks/app/g;->a:Lcom/darekxan/extweaks/app/f;

    invoke-virtual {v0}, Lcom/darekxan/extweaks/app/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;

    invoke-static {v0}, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->b(Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/darekxan/extweaks/app/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method
