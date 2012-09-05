.class final Lcom/sdgtl/mediahub/spr/customview/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static synthetic c:[I


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

.field private final synthetic b:Lcom/sdgtl/mediahub/spr/ar;

.field private final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;Lcom/sdgtl/mediahub/spr/ar;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/m;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/customview/m;->b:Lcom/sdgtl/mediahub/spr/ar;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/customview/m;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/customview/m;)Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/m;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    return-object v0
.end method

.method private static synthetic a()[I
    .registers 3

    sget-object v0, Lcom/sdgtl/mediahub/spr/customview/m;->c:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/sdgtl/mediahub/spr/ar;->values()[Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->M:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_2b9

    :goto_16
    :try_start_16
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->b:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_1f} :catch_2b6

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->N:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_29} :catch_2b3

    :goto_29
    :try_start_29
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->o:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_2b0

    :goto_33
    :try_start_33
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->p:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_2ad

    :goto_3d
    :try_start_3d
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->F:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_2aa

    :goto_47
    :try_start_47
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->G:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_51} :catch_2a7

    :goto_51
    :try_start_51
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5a} :catch_2a4

    :goto_5a
    :try_start_5a
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->c:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_63} :catch_2a1

    :goto_63
    :try_start_63
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->d:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6c} :catch_29e

    :goto_6c
    :try_start_6c
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->e:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_75} :catch_29b

    :goto_75
    :try_start_75
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->O:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_298

    :goto_7f
    :try_start_7f
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->A:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_295

    :goto_89
    :try_start_89
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->Y:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_292

    :goto_93
    :try_start_93
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->r:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_28f

    :goto_9d
    :try_start_9d
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->V:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_28c

    :goto_a7
    :try_start_a7
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_289

    :goto_b1
    :try_start_b1
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->l:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bb} :catch_286

    :goto_bb
    :try_start_bb
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->m:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c5} :catch_283

    :goto_c5
    :try_start_c5
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->S:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_280

    :goto_cf
    :try_start_cf
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->n:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_27d

    :goto_d9
    :try_start_d9
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->T:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_e3} :catch_27a

    :goto_e3
    :try_start_e3
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ed} :catch_277

    :goto_ed
    :try_start_ed
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->U:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f7} :catch_274

    :goto_f7
    :try_start_f7
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->s:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_101} :catch_271

    :goto_101
    :try_start_101
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->t:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10b} :catch_26e

    :goto_10b
    :try_start_10b
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->u:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_115} :catch_26b

    :goto_115
    :try_start_115
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->v:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_11f} :catch_268

    :goto_11f
    :try_start_11f
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->w:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_265

    :goto_129
    :try_start_129
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->W:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_133} :catch_262

    :goto_133
    :try_start_133
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->x:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_13d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_133 .. :try_end_13d} :catch_25f

    :goto_13d
    :try_start_13d
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->y:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_147
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13d .. :try_end_147} :catch_25c

    :goto_147
    :try_start_147
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->z:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_151
    .catch Ljava/lang/NoSuchFieldError; {:try_start_147 .. :try_end_151} :catch_259

    :goto_151
    :try_start_151
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->X:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_15b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_151 .. :try_end_15b} :catch_256

    :goto_15b
    :try_start_15b
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->B:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_165
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15b .. :try_end_165} :catch_253

    :goto_165
    :try_start_165
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->Z:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_16f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_165 .. :try_end_16f} :catch_250

    :goto_16f
    :try_start_16f
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->C:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_179
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16f .. :try_end_179} :catch_24d

    :goto_179
    :try_start_179
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->D:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_183
    .catch Ljava/lang/NoSuchFieldError; {:try_start_179 .. :try_end_183} :catch_24a

    :goto_183
    :try_start_183
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->J:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_18d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_183 .. :try_end_18d} :catch_247

    :goto_18d
    :try_start_18d
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->K:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_197
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18d .. :try_end_197} :catch_244

    :goto_197
    :try_start_197
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_197 .. :try_end_1a1} :catch_241

    :goto_1a1
    :try_start_1a1
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->I:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a1 .. :try_end_1ab} :catch_23e

    :goto_1ab
    :try_start_1ab
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->E:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ab .. :try_end_1b5} :catch_23b

    :goto_1b5
    :try_start_1b5
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->aa:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_1bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b5 .. :try_end_1bf} :catch_239

    :goto_1bf
    :try_start_1bf
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->L:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bf .. :try_end_1c9} :catch_237

    :goto_1c9
    :try_start_1c9
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->ab:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_1d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c9 .. :try_end_1d3} :catch_235

    :goto_1d3
    :try_start_1d3
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->f:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d3 .. :try_end_1dc} :catch_233

    :goto_1dc
    :try_start_1dc
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->i:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1dc .. :try_end_1e6} :catch_231

    :goto_1e6
    :try_start_1e6
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->j:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e6 .. :try_end_1f0} :catch_22f

    :goto_1f0
    :try_start_1f0
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->P:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_1fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f0 .. :try_end_1fa} :catch_22d

    :goto_1fa
    :try_start_1fa
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->h:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_204
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fa .. :try_end_204} :catch_22b

    :goto_204
    :try_start_204
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->R:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_20e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_204 .. :try_end_20e} :catch_229

    :goto_20e
    :try_start_20e
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->g:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_217
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20e .. :try_end_217} :catch_227

    :goto_217
    :try_start_217
    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->Q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_221
    .catch Ljava/lang/NoSuchFieldError; {:try_start_217 .. :try_end_221} :catch_225

    :goto_221
    sput-object v0, Lcom/sdgtl/mediahub/spr/customview/m;->c:[I

    goto/16 :goto_4

    :catch_225
    move-exception v1

    goto :goto_221

    :catch_227
    move-exception v1

    goto :goto_217

    :catch_229
    move-exception v1

    goto :goto_20e

    :catch_22b
    move-exception v1

    goto :goto_204

    :catch_22d
    move-exception v1

    goto :goto_1fa

    :catch_22f
    move-exception v1

    goto :goto_1f0

    :catch_231
    move-exception v1

    goto :goto_1e6

    :catch_233
    move-exception v1

    goto :goto_1dc

    :catch_235
    move-exception v1

    goto :goto_1d3

    :catch_237
    move-exception v1

    goto :goto_1c9

    :catch_239
    move-exception v1

    goto :goto_1bf

    :catch_23b
    move-exception v1

    goto/16 :goto_1b5

    :catch_23e
    move-exception v1

    goto/16 :goto_1ab

    :catch_241
    move-exception v1

    goto/16 :goto_1a1

    :catch_244
    move-exception v1

    goto/16 :goto_197

    :catch_247
    move-exception v1

    goto/16 :goto_18d

    :catch_24a
    move-exception v1

    goto/16 :goto_183

    :catch_24d
    move-exception v1

    goto/16 :goto_179

    :catch_250
    move-exception v1

    goto/16 :goto_16f

    :catch_253
    move-exception v1

    goto/16 :goto_165

    :catch_256
    move-exception v1

    goto/16 :goto_15b

    :catch_259
    move-exception v1

    goto/16 :goto_151

    :catch_25c
    move-exception v1

    goto/16 :goto_147

    :catch_25f
    move-exception v1

    goto/16 :goto_13d

    :catch_262
    move-exception v1

    goto/16 :goto_133

    :catch_265
    move-exception v1

    goto/16 :goto_129

    :catch_268
    move-exception v1

    goto/16 :goto_11f

    :catch_26b
    move-exception v1

    goto/16 :goto_115

    :catch_26e
    move-exception v1

    goto/16 :goto_10b

    :catch_271
    move-exception v1

    goto/16 :goto_101

    :catch_274
    move-exception v1

    goto/16 :goto_f7

    :catch_277
    move-exception v1

    goto/16 :goto_ed

    :catch_27a
    move-exception v1

    goto/16 :goto_e3

    :catch_27d
    move-exception v1

    goto/16 :goto_d9

    :catch_280
    move-exception v1

    goto/16 :goto_cf

    :catch_283
    move-exception v1

    goto/16 :goto_c5

    :catch_286
    move-exception v1

    goto/16 :goto_bb

    :catch_289
    move-exception v1

    goto/16 :goto_b1

    :catch_28c
    move-exception v1

    goto/16 :goto_a7

    :catch_28f
    move-exception v1

    goto/16 :goto_9d

    :catch_292
    move-exception v1

    goto/16 :goto_93

    :catch_295
    move-exception v1

    goto/16 :goto_89

    :catch_298
    move-exception v1

    goto/16 :goto_7f

    :catch_29b
    move-exception v1

    goto/16 :goto_75

    :catch_29e
    move-exception v1

    goto/16 :goto_6c

    :catch_2a1
    move-exception v1

    goto/16 :goto_63

    :catch_2a4
    move-exception v1

    goto/16 :goto_5a

    :catch_2a7
    move-exception v1

    goto/16 :goto_51

    :catch_2aa
    move-exception v1

    goto/16 :goto_47

    :catch_2ad
    move-exception v1

    goto/16 :goto_3d

    :catch_2b0
    move-exception v1

    goto/16 :goto_33

    :catch_2b3
    move-exception v1

    goto/16 :goto_29

    :catch_2b6
    move-exception v1

    goto/16 :goto_1f

    :catch_2b9
    move-exception v1

    goto/16 :goto_16
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9

    const-wide/16 v5, 0x320

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    :pswitch_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/m;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->a()Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_20
    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$0(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_132

    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/m;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    invoke-virtual {v0, v4}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->searchClose(Z)V

    goto :goto_b

    :pswitch_30
    invoke-static {}, Lcom/sdgtl/mediahub/spr/customview/m;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/m;->b:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_13c

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a()Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a()Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/n;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/m;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/m;->b:Lcom/sdgtl/mediahub/spr/ar;

    invoke-direct {v0, p0, v1, v2}, Lcom/sdgtl/mediahub/spr/customview/n;-><init>(Lcom/sdgtl/mediahub/spr/customview/m;Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;)V

    invoke-virtual {p1, v0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2a

    :cond_5c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/m;->d:Landroid/app/Activity;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->c:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/m;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    const v1, 0x7f0d0057

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/m;->b:Lcom/sdgtl/mediahub/spr/ar;

    #calls: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finishiActivities(ILcom/sdgtl/mediahub/spr/ar;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$1(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;ILcom/sdgtl/mediahub/spr/ar;Z)V

    goto :goto_2a

    :pswitch_6e
    invoke-static {}, Lcom/sdgtl/mediahub/spr/customview/m;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/m;->b:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_142

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a()Lcom/sdgtl/mediahub/spr/screen/TvStore;

    move-result-object v0

    if-eqz v0, :cond_9a

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a()Lcom/sdgtl/mediahub/spr/screen/TvStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9a

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/o;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/m;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/m;->b:Lcom/sdgtl/mediahub/spr/ar;

    invoke-direct {v0, p0, v1, v2}, Lcom/sdgtl/mediahub/spr/customview/o;-><init>(Lcom/sdgtl/mediahub/spr/customview/m;Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;)V

    invoke-virtual {p1, v0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2a

    :cond_9a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/m;->d:Landroid/app/Activity;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->f:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/m;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    const v1, 0x7f0d0058

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/m;->b:Lcom/sdgtl/mediahub/spr/ar;

    #calls: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finishiActivities(ILcom/sdgtl/mediahub/spr/ar;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$1(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;ILcom/sdgtl/mediahub/spr/ar;Z)V

    goto/16 :goto_2a

    :pswitch_ad
    invoke-static {}, Lcom/sdgtl/mediahub/spr/customview/m;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/m;->b:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/ar;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14c

    :pswitch_bc
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/m;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_101

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->a()Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    if-eqz v0, :cond_d4

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->a()Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/Main;->b()Z

    move-result v0

    if-eqz v0, :cond_f1

    :cond_d4
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$0(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action_bar_call"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/m;->d:Landroid/app/Activity;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v3, 0x3

    invoke-static {v1, v2, v0, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto/16 :goto_2a

    :cond_f1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/m;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/m;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_2a

    :cond_101
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a()Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-result-object v0

    if-eqz v0, :cond_11f

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a()Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_11f

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/p;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/m;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/m;->b:Lcom/sdgtl/mediahub/spr/ar;

    invoke-direct {v0, p0, v1, v2}, Lcom/sdgtl/mediahub/spr/customview/p;-><init>(Lcom/sdgtl/mediahub/spr/customview/m;Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;)V

    invoke-virtual {p1, v0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2a

    :cond_11f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/m;->d:Landroid/app/Activity;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/m;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    const v1, 0x7f0d0059

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/m;->b:Lcom/sdgtl/mediahub/spr/ar;

    #calls: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finishiActivities(ILcom/sdgtl/mediahub/spr/ar;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$1(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;ILcom/sdgtl/mediahub/spr/ar;Z)V

    goto/16 :goto_2a

    :pswitch_data_132
    .packed-switch 0x7f0d0057
        :pswitch_30
        :pswitch_6e
        :pswitch_ad
    .end packed-switch

    :pswitch_data_13c
    .packed-switch 0x3
        :pswitch_b
    .end packed-switch

    :pswitch_data_142
    .packed-switch 0x6
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_14c
    .packed-switch 0xb
        :pswitch_b
        :pswitch_bc
        :pswitch_bc
        :pswitch_b
    .end packed-switch
.end method
